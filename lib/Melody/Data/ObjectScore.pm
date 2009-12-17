package Melody::Data::ObjectScore;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_objectscore");
__PACKAGE__->add_columns(
  "objectscore_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "objectscore_author_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "objectscore_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "objectscore_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "objectscore_ip",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "objectscore_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "objectscore_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "objectscore_namespace",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 100,
  },
  "objectscore_object_ds",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "objectscore_object_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "objectscore_score",
  { data_type => "FLOAT", default_value => undef, is_nullable => 1, size => 32 },
);
__PACKAGE__->set_primary_key("objectscore_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Sb2bBaSF6jM9yUZJWtaxSQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
