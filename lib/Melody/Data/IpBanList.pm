package Melody::Data::IpBanList;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_ipbanlist");
__PACKAGE__->add_columns(
  "ipbanlist_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ipbanlist_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ipbanlist_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "ipbanlist_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "ipbanlist_ip",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
  "ipbanlist_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "ipbanlist_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
);
__PACKAGE__->set_primary_key("ipbanlist_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Oonxpop06rLvf2THvZzXQg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
