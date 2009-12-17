package Melody::Data::Comment;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_comment");
__PACKAGE__->add_columns(
  "comment_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "comment_author",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 100,
  },
  "comment_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "comment_commenter_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "comment_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "comment_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "comment_email",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 127,
  },
  "comment_entry_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "comment_ip",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "comment_junk_log",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "comment_junk_score",
  { data_type => "FLOAT", default_value => undef, is_nullable => 1, size => 32 },
  "comment_junk_status",
  { data_type => "SMALLINT", default_value => 1, is_nullable => 1, size => 6 },
  "comment_last_moved_on",
  {
    data_type => "DATETIME",
    default_value => "2000-01-01 00:00:00",
    is_nullable => 0,
    size => 19,
  },
  "comment_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "comment_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "comment_parent_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "comment_text",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "comment_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "comment_visible",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
);
__PACKAGE__->set_primary_key("comment_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:2rU/NEGKTYcfl9LY9/S1Bw

__PACKAGE__->belongs_to(
  'blog_id',
  'Melody::Data::Blog',
  'comment_blog_id'
  );

__PACKAGE__->belongs_to(
  'author_id',
  'Melody::Data::Author',
  'comment_commenter_id'
  );

__PACKAGE__->belongs_to(
  'entry_id',
  'Melody::Data::Entry',
  'comment_entry_id'
  );

1;
