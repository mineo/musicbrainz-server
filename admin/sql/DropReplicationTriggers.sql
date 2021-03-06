SET search_path = musicbrainz;

SET autocommit TO 'on';

DROP TRIGGER "reptg_annotation" ON "annotation";
DROP TRIGGER "reptg_artist" ON "artist";
DROP TRIGGER "reptg_artist_alias" ON "artist_alias";
DROP TRIGGER "reptg_artist_annotation" ON "artist_annotation";
DROP TRIGGER "reptg_artist_meta" ON "artist_meta";
DROP TRIGGER "reptg_artist_tag" ON "artist_tag";
DROP TRIGGER "reptg_artist_credit" ON "artist_credit";
DROP TRIGGER "reptg_artist_credit_name" ON "artist_credit_name";
DROP TRIGGER "reptg_artist_gid_redirect" ON "artist_gid_redirect";
DROP TRIGGER "reptg_artist_name" ON "artist_name";
DROP TRIGGER "reptg_artist_type" ON "artist_type";

-- not replicated:
-- editor editor_preference editor_subscribe_artist editor_subscribe_label 
-- editor_subscribe_editor editor_collection editor_collection_release

DROP TRIGGER "reptg_cdtoc" ON "cdtoc";
DROP TRIGGER "reptg_clientversion" ON "clientversion";
DROP TRIGGER "reptg_country" ON "country";

-- not replicated:
-- currentstat

DROP TRIGGER "reptg_gender" ON "gender";
DROP TRIGGER "reptg_isrc" ON "isrc";

-- not replicated:
-- historicalstat

DROP TRIGGER "reptg_l_artist_artist" ON "l_artist_artist";
DROP TRIGGER "reptg_l_artist_label" ON "l_artist_label";
DROP TRIGGER "reptg_l_artist_recording" ON "l_artist_recording";
DROP TRIGGER "reptg_l_artist_release" ON "l_artist_release";
DROP TRIGGER "reptg_l_artist_release_group" ON "l_artist_release_group";
DROP TRIGGER "reptg_l_artist_url" ON "l_artist_url";
DROP TRIGGER "reptg_l_artist_work" ON "l_artist_work";
DROP TRIGGER "reptg_l_label_label" ON "l_label_label";
DROP TRIGGER "reptg_l_label_recording" ON "l_label_recording";
DROP TRIGGER "reptg_l_label_release" ON "l_label_release";
DROP TRIGGER "reptg_l_label_release_group" ON "l_label_release_group";
DROP TRIGGER "reptg_l_label_url" ON "l_label_url";
DROP TRIGGER "reptg_l_label_work" ON "l_label_work";
DROP TRIGGER "reptg_l_recording_recording" ON "l_recording_recording";
DROP TRIGGER "reptg_l_recording_release" ON "l_recording_release";
DROP TRIGGER "reptg_l_recording_release_group" ON "l_recording_release_group";
DROP TRIGGER "reptg_l_recording_url" ON "l_recording_url";
DROP TRIGGER "reptg_l_recording_work" ON "l_recording_work";
DROP TRIGGER "reptg_l_release_release" ON "l_release_release";
DROP TRIGGER "reptg_l_release_release_group" ON "l_release_release_group";
DROP TRIGGER "reptg_l_release_url" ON "l_release_url";
DROP TRIGGER "reptg_l_release_work" ON "l_release_work";
DROP TRIGGER "reptg_l_release_group_release_group" ON "l_release_group_release_group";
DROP TRIGGER "reptg_l_release_group_url" ON "l_release_group_url";
DROP TRIGGER "reptg_l_release_group_work" ON "l_release_group_work";
DROP TRIGGER "reptg_l_url_url" ON "l_url_url";
DROP TRIGGER "reptg_l_url_work" ON "l_url_work";
DROP TRIGGER "reptg_l_work_work" ON "l_work_work";
DROP TRIGGER "reptg_label" ON "label";
DROP TRIGGER "reptg_label_alias" ON "label_alias";
DROP TRIGGER "reptg_label_annotation" ON "label_annotation";
DROP TRIGGER "reptg_label_meta" ON "label_meta";
DROP TRIGGER "reptg_label_gid_redirect" ON "label_gid_redirect";
DROP TRIGGER "reptg_label_name" ON "label_name";
DROP TRIGGER "reptg_label_tag" ON "label_tag";
DROP TRIGGER "reptg_label_type" ON "label_type";
DROP TRIGGER "reptg_language" ON "language";
DROP TRIGGER "reptg_link" ON "link";
DROP TRIGGER "reptg_link_attribute" ON "link_attribute";
DROP TRIGGER "reptg_link_attribute_type" ON "link_attribute_type";
DROP TRIGGER "reptg_link_type" ON "link_type";
DROP TRIGGER "reptg_link_type_attribute_type" ON "link_type_attribute_type";
DROP TRIGGER "reptg_medium" ON "medium";
DROP TRIGGER "reptg_medium_cdtoc" ON "medium_cdtoc";
DROP TRIGGER "reptg_medium_format" ON "medium_format";
DROP TRIGGER "reptg_puid" ON "puid";
DROP TRIGGER "reptg_recording" ON "recording";
DROP TRIGGER "reptg_recording_annotation" ON "recording_annotation";
DROP TRIGGER "reptg_recording_meta" ON "recording_meta";
DROP TRIGGER "reptg_recording_gid_redirect" ON "recording_gid_redirect";
DROP TRIGGER "reptg_recording_puid" ON "recording_puid";
DROP TRIGGER "reptg_recording_tag" ON "recording_tag";
DROP TRIGGER "reptg_release" ON "release";
DROP TRIGGER "reptg_release_annotation" ON "release_annotation";
DROP TRIGGER "reptg_release_gid_redirect" ON "release_gid_redirect";
DROP TRIGGER "reptg_release_meta" ON "release_meta";
DROP TRIGGER "reptg_release_label" ON "release_label";
DROP TRIGGER "reptg_release_packaging" ON "release_packaging";
DROP TRIGGER "reptg_release_status" ON "release_status";
DROP TRIGGER "reptg_release_group" ON "release_group";
DROP TRIGGER "reptg_release_group_annotation" ON "release_group_annotation";
DROP TRIGGER "reptg_release_group_gid_redirect" ON "release_group_gid_redirect";
DROP TRIGGER "reptg_release_group_meta" ON "release_group_meta";
DROP TRIGGER "reptg_release_group_tag" ON "release_group_tag";
DROP TRIGGER "reptg_release_group_type" ON "release_group_type";
DROP TRIGGER "reptg_release_name" ON "release_name";
DROP TRIGGER "reptg_script" ON "script";
DROP TRIGGER "reptg_statistic" ON "statistic";
DROP TRIGGER "reptg_replication_control" ON "replication_control";
DROP TRIGGER "reptg_script_language" ON "script_language";
DROP TRIGGER "reptg_tag" ON "tag";
DROP TRIGGER "reptg_tag_relation" ON "tag_relation";
DROP TRIGGER "reptg_track" ON "track";
DROP TRIGGER "reptg_track_name" ON "track_name";
DROP TRIGGER "reptg_tracklist" ON "tracklist";
DROP TRIGGER "reptg_tracklist_index" ON "tracklist_index";
DROP TRIGGER "reptg_url" ON "url";
DROP TRIGGER "reptg_work" ON "work";
DROP TRIGGER "reptg_work_annotation" ON "work_annotation";
DROP TRIGGER "reptg_work_gid_redirect" ON "work_gid_redirect";
DROP TRIGGER "reptg_work_meta" ON "work_meta";
DROP TRIGGER "reptg_work_name" ON "work_name";
DROP TRIGGER "reptg_work_tag" ON "work_tag";
DROP TRIGGER "reptg_work_type" ON "work_type";


-- vi: set ts=4 sw=4 et :
