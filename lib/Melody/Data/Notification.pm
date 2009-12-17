package Melody::Data::Notification;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_notification");
__PACKAGE__->add_columns(
  "notification_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "notification_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "notification_created_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "notification_created_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "notification_email",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 75,
  },
  "notification_modified_by",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "notification_modified_on",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "notification_name",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 50,
  },
  "notification_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("notification_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NESbRoHdbq1uvGq7MgQwbg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
