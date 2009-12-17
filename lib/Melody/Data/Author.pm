package Melody::Data::Author;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_author");
__PACKAGE__->add_columns(
  "author_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "author_api_password",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 60,
  },
  "author_auth_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "author_basename",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "author_can_create_blog",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "author_can_view_log",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "author_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "author_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "author_email",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 127,
  },
  "author_entry_prefs",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "author_external_id",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "author_hint",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 75,
  },
  "author_is_superuser",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "author_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "author_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "author_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "author_nickname",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "author_password",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 60,
  },
  "author_preferred_language",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "author_public_key",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "author_remote_auth_token",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "author_remote_auth_username",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "author_status",
  { data_type => "INT", default_value => 1, is_nullable => 1, size => 11 },
  "author_text_format",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 30,
  },
  "author_type",
  { data_type => "SMALLINT", default_value => 1, is_nullable => 0, size => 6 },
  "author_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "author_userpic_asset_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
);
__PACKAGE__->set_primary_key("author_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kn/W5UNVsVs4PYWrskMRlw

__PACKAGE__->has_many(
    'categories',
    'Melody::Data::Category',
    'category_author_id');

__PACKAGE__->has_many(
    'associations',
    'Melody::Data::Association',
    'association_author_id');

__PACKAGE__->many_to_many(
    'blogs',
    'associations',
    'association_blog_id'
);

__PACKAGE__->many_to_many(
    'comments',
    'Melody::Data::Comment',
    'comment_author_id'
);

1;
