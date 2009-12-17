package Melody::Data::ObjectAsset;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_objectasset");
__PACKAGE__->add_columns(
  "objectasset_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "objectasset_asset_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "objectasset_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "objectasset_embedded",
  { data_type => "TINYINT", default_value => 0, is_nullable => 1, size => 4 },
  "objectasset_object_ds",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "objectasset_object_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
);
__PACKAGE__->set_primary_key("objectasset_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:C40VzXVE8JEsQt/SOVXdEQ

__PACKAGE__->belongs_to(
    'blog_id',
    'Melody::Data::Blog',
    'objectasset_blog_id');

__PACKAGE__->belongs_to(
    'asset_id',
    'Melody::Data::Asset',
    'objectasset_asset_id');

__PACKAGE__->belongs_to(
    'entry_id',
    'Melody::Data::Entry',
    'objectasset_object_id');

1;
