package Melody::Data::Asset;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_asset");
__PACKAGE__->add_columns(
  "asset_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "asset_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "asset_class",
  {
    data_type => "VARCHAR",
    default_value => "file",
    is_nullable => 1,
    size => 255,
  },
  "asset_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "asset_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "asset_description",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "asset_file_ext",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 20,
  },
  "asset_file_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "asset_file_path",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "asset_label",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "asset_mime_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "asset_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "asset_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "asset_parent",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "asset_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("asset_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:So1NwGLbtcN5fw2jvFj4NA

__PACKAGE__->belongs_to(
  'blog_id',
  'Melody::Data::Blog',
  'asset_blog_id');

1;
