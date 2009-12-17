package Melody::Data::Log;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_log");
__PACKAGE__->add_columns(
  "log_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "log_author_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "log_blog_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "log_category",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "log_class",
  {
    data_type => "VARCHAR",
    default_value => "system",
    is_nullable => 1,
    size => 255,
  },
  "log_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "log_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "log_ip",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "log_level",
  { data_type => "INT", default_value => 1, is_nullable => 1, size => 11 },
  "log_message",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "log_metadata",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "log_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "log_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
);
__PACKAGE__->set_primary_key("log_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:O2iTNgyO0OVKoEYpqcgk1A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
