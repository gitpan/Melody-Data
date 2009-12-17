package Melody::Data::ObjectTag;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_objecttag");
__PACKAGE__->add_columns(
  "objecttag_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "objecttag_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "objecttag_object_datasource",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "objecttag_object_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "objecttag_tag_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
);
__PACKAGE__->set_primary_key("objecttag_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LgmlS/+5eJEOIxJ/JZiDfg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
