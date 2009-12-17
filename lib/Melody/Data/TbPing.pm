package Melody::Data::TbPing;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_tbping");
__PACKAGE__->add_columns(
  "tbping_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "tbping_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "tbping_blog_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "tbping_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "tbping_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "tbping_excerpt",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "tbping_ip",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "tbping_junk_log",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "tbping_junk_score",
  { data_type => "FLOAT", default_value => undef, is_nullable => 1, size => 32 },
  "tbping_junk_status",
  { data_type => "SMALLINT", default_value => 1, is_nullable => 0, size => 6 },
  "tbping_last_moved_on",
  {
    data_type => "DATETIME",
    default_value => "2000-01-01 00:00:00",
    is_nullable => 0,
    size => 19,
  },
  "tbping_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "tbping_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "tbping_source_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "tbping_tb_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "tbping_title",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "tbping_visible",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
);
__PACKAGE__->set_primary_key("tbping_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/2Ho/5R/hOE5+xGdGlUaYw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
