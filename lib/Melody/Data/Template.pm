package Melody::Data::Template;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_template");
__PACKAGE__->add_columns(
  "template_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "template_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "template_build_dynamic",
  { data_type => "TINYINT", default_value => 0, is_nullable => 1, size => 4 },
  "template_build_interval",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "template_build_type",
  { data_type => "SMALLINT", default_value => 1, is_nullable => 1, size => 6 },
  "template_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "template_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "template_identifier",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "template_linked_file",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "template_linked_file_mtime",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 10,
  },
  "template_linked_file_size",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "template_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "template_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "template_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "template_outfile",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "template_rebuild_me",
  { data_type => "TINYINT", default_value => 1, is_nullable => 1, size => 4 },
  "template_text",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "template_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 25,
  },
);
__PACKAGE__->set_primary_key("template_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:v9dZVo/8J7yB6IKZPcH4Og


# You can replace this text with custom content, and it will be preserved on regeneration
1;
