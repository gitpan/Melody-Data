package Melody::Data::Tag;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_tag");
__PACKAGE__->add_columns(
  "tag_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "tag_is_private",
  { data_type => "TINYINT", default_value => 0, is_nullable => 1, size => 4 },
  "tag_n8d_id",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "tag_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("tag_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:nULS4gKr1tifrPiOebqIgw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
