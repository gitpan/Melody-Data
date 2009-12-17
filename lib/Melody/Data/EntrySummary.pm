package Melody::Data::EntrySummary;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_entry_summary");
__PACKAGE__->add_columns(
  "entry_summary_entry_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "entry_summary_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
  "entry_summary_class",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 75,
  },
  "entry_summary_vchar_idx",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "entry_summary_vinteger_idx",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "entry_summary_vblob",
  {
    data_type => "MEDIUMBLOB",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_summary_vclob",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "entry_summary_expired",
  {
    data_type => "SMALLINT",
    default_value => undef,
    is_nullable => 1,
    size => 6,
  },
);
__PACKAGE__->set_primary_key("entry_summary_entry_id", "entry_summary_type");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:rTTZC7hw6sQ9tUsFs3o5Jg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
