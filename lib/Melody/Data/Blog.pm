package Melody::Data::Blog;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_blog");
__PACKAGE__->add_columns(
  "blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "blog_allow_anon_comments",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_allow_comment_html",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_allow_commenter_regist",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_allow_comments_default",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_allow_pings",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_allow_pings_default",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_allow_reg_comments",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_allow_unreg_comments",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_archive_path",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_archive_tmpl_category",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_archive_tmpl_daily",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_archive_tmpl_individual",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_archive_tmpl_monthly",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_archive_tmpl_weekly",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_archive_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_archive_type_preferred",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 25,
  },
  "blog_archive_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_autodiscover_links",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_autolink_urls",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_basename_limit",
  {
    data_type => "SMALLINT",
    default_value => undef,
    is_nullable => 1,
    size => 6,
  },
  "blog_cc_license",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_children_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "blog_convert_paras",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 30,
  },
  "blog_convert_paras_comments",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 30,
  },
  "blog_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "blog_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "blog_custom_dynamic_templates",
  {
    data_type => "VARCHAR",
    default_value => "none",
    is_nullable => 1,
    size => 25,
  },
  "blog_days_on_index",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "blog_description",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "blog_email_new_comments",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_email_new_pings",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_entries_on_index",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "blog_file_extension",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 10,
  },
  "blog_google_api_key",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 32,
  },
  "blog_internal_autodiscovery",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_is_dynamic",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_junk_folder_expiry",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "blog_junk_score_threshold",
  { data_type => "FLOAT", default_value => undef, is_nullable => 1, size => 32 },
  "blog_language",
  { data_type => "VARCHAR", default_value => undef, is_nullable => 1, size => 5 },
  "blog_manual_approve_commenters",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_moderate_pings",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_moderate_unreg_comments",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "blog_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "blog_mt_update_key",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 30,
  },
  "blog_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "blog_old_style_archive_links",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_ping_blogs",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_ping_google",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_ping_others",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "blog_ping_technorati",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_ping_weblogs",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_remote_auth_token",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "blog_require_comment_emails",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_sanitize_spec",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_server_offset",
  { data_type => "FLOAT", default_value => undef, is_nullable => 1, size => 32 },
  "blog_site_path",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_site_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "blog_sort_order_comments",
  { data_type => "VARCHAR", default_value => undef, is_nullable => 1, size => 8 },
  "blog_sort_order_posts",
  { data_type => "VARCHAR", default_value => undef, is_nullable => 1, size => 8 },
  "blog_status_default",
  {
    data_type => "SMALLINT",
    default_value => undef,
    is_nullable => 1,
    size => 6,
  },
  "blog_use_comment_confirmation",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "blog_welcome_msg",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "blog_words_in_excerpt",
  {
    data_type => "SMALLINT",
    default_value => undef,
    is_nullable => 1,
    size => 6,
  },
);
__PACKAGE__->set_primary_key("blog_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lbot8kFYoCGx5XQ+oGfu9A

__PACKAGE__->has_many(
    'assets',
    'Melody::Data::Asset',
    'asset_blog_id');

__PACKAGE__->has_many(
    'associations',
    'Melody::Data::Association',
    'association_blog_id');

__PACKAGE__->has_many(
    'categories',
    'Melody::Data::Category',
    'category_blog_id'
);

__PACKAGE__->has_many(
    'comments',
    'Melody::Data::Comment',
    'comment_blog_id'
);

__PACKAGE__->has_many(
    'entries',
    'Melody::Data::Entry',
    'entry_blog_id'
);

__PACKAGE__->has_many(
    'placements',
    'Melody::Data::Placement',
    'placement_blog_id');

__PACKAGE__->many_to_many(
    'authors',
    'associations',
    'association_author_id');

1;