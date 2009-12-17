package Melody::Data::EntryMeta;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_entry_meta");
__PACKAGE__->add_columns(
  "entry_meta_entry_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "entry_meta_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 75,
  },
  "entry_meta_vchar",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "entry_meta_vchar_idx",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "entry_meta_vdatetime",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "entry_meta_vdatetime_idx",
  {
    data_type => "DATETIME",
    default_value => undef,
    is_nullable => 1,
    size => 19,
  },
  "entry_meta_vinteger",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "entry_meta_vinteger_idx",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "entry_meta_vfloat",
  { data_type => "FLOAT", default_value => undef, is_nullable => 1, size => 32 },
  "entry_meta_vfloat_idx",
  { data_type => "FLOAT", default_value => undef, is_nullable => 1, size => 32 },
  "entry_meta_vblob",
  {
    data_type => "MEDIUMBLOB",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_meta_vclob",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
);
__PACKAGE__->set_primary_key("entry_meta_entry_id", "entry_meta_type");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IzhmVQ6XYpFg/TawzioBMQ


# You can replace this text with custom content, and it will be preserved on regeneration
1;
