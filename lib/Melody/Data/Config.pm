package Melody::Data::Config;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_config");
__PACKAGE__->add_columns(
  "config_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "config_data",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
);
__PACKAGE__->set_primary_key("config_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:V8+G6syNWgiBFsjeDn0Orw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
