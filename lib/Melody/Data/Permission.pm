package Melody::Data::Permission;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_permission");
__PACKAGE__->add_columns(
  "permission_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "permission_author_id",
  { data_type => "INT", default_value => 0, is_nullable => 0, size => 11 },
  "permission_blog_id",
  { data_type => "INT", default_value => 0, is_nullable => 0, size => 11 },
  "permission_blog_prefs",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "permission_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "permission_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "permission_entry_prefs",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "permission_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "permission_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "permission_permissions",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "permission_restrictions",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "permission_role_mask",
  { data_type => "INT", default_value => 0, is_nullable => 1, size => 11 },
  "permission_template_prefs",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("permission_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:jLIVoH359mcFBbHwZlYt5Q


# You can replace this text with custom content, and it will be preserved on regeneration
1;
