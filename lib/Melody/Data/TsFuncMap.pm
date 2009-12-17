package Melody::Data::TsFuncMap;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_ts_funcmap");
__PACKAGE__->add_columns(
  "ts_funcmap_funcid",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_funcmap_funcname",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("ts_funcmap_funcid");
__PACKAGE__->add_unique_constraint("mt_ts_funcmap_funcname", ["ts_funcmap_funcname"]);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7VxEoIN/uP2szd6DWsu5HQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
