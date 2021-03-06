package MusicBrainz::Server::Controller::Doc;
use Moose;

BEGIN { extends 'MusicBrainz::Server::Controller'; }

use DBDefs;

sub show : Path('')
{
    my ($self, $c, @args) = @_;

    my $id = join '/', @args;
    $id =~ s/ /_/g;

    my $version = $c->model('WikiDocIndex')->get_page_version($id);
    my $page = $c->model('WikiDoc')->get_page($id, $version);

    if ($page && $page->canonical)
    {
        my ($path, $fragment) = split /\#/, $page->{canonical}, 2;
        $fragment = $fragment ? '#'.$fragment : '';

        $c->response->redirect($c->uri_for('/doc', $path).$fragment, 301);
        return;
    }

    # Create hierarchy via url, but prevent the current page from showing
    my @hierarchy_links = split('/',$id);
    @hierarchy_links = splice @hierarchy_links, 0, -1;

    my $bare = $c->req->param('bare') || 0;
    $c->stash(
        id => $id,
        page => $page,
        hierarchy_links => \@hierarchy_links,
    );

    if ($id =~ /^(Special|User):/i) {
        $c->response->status(404);
        $c->stash->{template} = 'doc/error.tt';
        return;
    }

    if ($page) {
        $c->stash->{template} = $bare ? 'doc/bare.tt' : 'doc/page.tt';
    }
    else {
        $c->response->status(404);
        $c->stash->{template} = $bare ? 'doc/bare_error.tt' : 'doc/error.tt';
    }
}

no Moose;
1;

=head1 COPYRIGHT

Copyright (C) 2009 Lukas Lalinsky

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

=cut
