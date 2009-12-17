package Melody::Data::Association;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_association");
__PACKAGE__->add_columns(
  "association_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "association_author_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "association_blog_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "association_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "association_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "association_group_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "association_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "association_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "association_role_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "association_type",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
);
__PACKAGE__->set_primary_key("association_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:kGezzra3MOopg5Ldu47Z5Q

__PACKAGE__->belongs_to('association_blog_id', 'Melody::Data::Blog');
__PACKAGE__->belongs_to('association_author_id', 'Melody::Data::Author');

1;
