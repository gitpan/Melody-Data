package Melody::Data::TsError;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_ts_error");
__PACKAGE__->add_columns(
  "ts_error_error_time",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_error_funcid",
  { data_type => "INT", default_value => 0, is_nullable => 0, size => 11 },
  "ts_error_jobid",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_error_message",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 255,
  },
);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:SNaixfq3YUcK7QaE7Gu2NA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
