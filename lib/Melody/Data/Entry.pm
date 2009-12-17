package Melody::Data::Entry;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_entry");
__PACKAGE__->add_columns(
  "entry_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "entry_allow_comments",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "entry_allow_pings",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "entry_atom_id",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "entry_author_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "entry_authored_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "entry_basename",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "entry_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "entry_category_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "entry_class",
  {
    data_type => "VARCHAR",
    default_value => "entry",
    is_nullable => 1,
    size => 255,
  },
  "entry_comment_count",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "entry_convert_breaks",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 30,
  },
  "entry_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "entry_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "entry_excerpt",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_keywords",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "entry_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "entry_ping_count",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "entry_pinged_urls",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_status",
  {
    data_type => "SMALLINT",
    default_value => undef,
    is_nullable => 0,
    size => 6,
  },
  "entry_tangent_cache",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_template_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "entry_text",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_text_more",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_title",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "entry_to_ping_urls",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_week_number",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
);
__PACKAGE__->set_primary_key("entry_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SvsYmeHtqL+RmssEloyV5g

__PACKAGE__->has_many(
  'comments',
  'Melody::Data::Comment',
  'comment_entry_id'
  );

__PACKAGE__->has_many(
  'placements',
  'Melody::Data::Placement',
  'placement_entry_id'
  );

__PACKAGE__->has_many(
  'object_assets',
  'Melody::Data::ObjectAsset',
  'objectasset_object_id'
  );

__PACKAGE__->belongs_to(
  'author_id',
  'Melody::Data::Author',
  'entry_author_id'
  );

__PACKAGE__->belongs_to(
  'blog_id',
  'Melody::Data::Blog',
  'entry_blog_id'
  );

__PACKAGE__->has_one(
  'category',
  'Melody::Data::Category',
  {'foreign.category_id' => 'self.category_id'}
  );

__PACKAGE__->has_one(
  'author',
  'Melody::Data::Author',
  {'foreign.author_id' => 'self.entry_author_id'}
  );

__PACKAGE__->many_to_many(
  'categories',
  'placements',
  'category_id'
  );

__PACKAGE__->many_to_many(
  'assets',
  'object_assets',
  'asset_id'
  );

1;
