package Melody::Data::PluginData;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_plugindata");
__PACKAGE__->add_columns(
  "plugindata_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "plugindata_data",
  {
    data_type => "MEDIUMBLOB",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "plugindata_key",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "plugindata_plugin",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 50,
  },
);
__PACKAGE__->set_primary_key("plugindata_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RQ/HlqjOM0joMisAk/8jWw


# You can replace this text with custom content, and it will be preserved on regeneration
1;
