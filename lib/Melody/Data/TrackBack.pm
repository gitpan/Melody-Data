package Melody::Data::TrackBack;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_trackback");
__PACKAGE__->add_columns(
  "trackback_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "trackback_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "trackback_category_id",
  { data_type => "INT", default_value => 0, is_nullable => 0, size => 11 },
  "trackback_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "trackback_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "trackback_description",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "trackback_entry_id",
  { data_type => "INT", default_value => 0, is_nullable => 0, size => 11 },
  "trackback_is_disabled",
  { data_type => "TINYINT", default_value => 0, is_nullable => 1, size => 4 },
  "trackback_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "trackback_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "trackback_passphrase",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 30,
  },
  "trackback_rss_file",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "trackback_title",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "trackback_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("trackback_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:N0vPRllFxKLzF6DR/MjYsw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
