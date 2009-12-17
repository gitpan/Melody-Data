package Melody::Data::Category;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_category");
__PACKAGE__->add_columns(
  "category_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "category_allow_pings",
  { data_type => "TINYINT", default_value => 0, is_nullable => 1, size => 4 },
  "category_author_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "category_basename",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "category_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "category_class",
  {
    data_type => "VARCHAR",
    default_value => "category",
    is_nullable => 1,
    size => 255,
  },
  "category_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "category_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "category_description",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "category_label",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 100,
  },
  "category_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "category_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "category_parent",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "category_ping_urls",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
);
__PACKAGE__->set_primary_key("category_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7FYENUiETimoOmuk7jg7iQ

__PACKAGE__->belongs_to(
    'blog_id',
    'Melody::Data::Blog',
    'category_blog_id');

__PACKAGE__->belongs_to(
    'author_id',
    'Melody::Data::Author',
    'category_author_id');

__PACKAGE__->has_many(
    'placements',
    'Melody::Data::Placement',
    'placement_category_id');

1;
