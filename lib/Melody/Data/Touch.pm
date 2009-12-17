package Melody::Data::Touch;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_touch");
__PACKAGE__->add_columns(
  "touch_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "touch_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "touch_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "touch_object_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("touch_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:3sEf0QC0bE+M/nOreWVi+w


# You can replace this text with custom content, and it will be preserved on regeneration
1;
