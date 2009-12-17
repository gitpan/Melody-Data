package Melody::Data::Role;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_role");
__PACKAGE__->add_columns(
  "role_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "role_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "role_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "role_description",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "role_is_system",
  { data_type => "TINYINT", default_value => 0, is_nullable => 1, size => 4 },
  "role_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "role_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "role_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "role_permissions",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "role_role_mask",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "role_role_mask2",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "role_role_mask3",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "role_role_mask4",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
);
__PACKAGE__->set_primary_key("role_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ikGSuy4ljirDkFWfIR2jHg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
