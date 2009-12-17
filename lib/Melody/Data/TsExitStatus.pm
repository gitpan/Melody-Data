package Melody::Data::TsExitStatus;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_ts_exitstatus");
__PACKAGE__->add_columns(
  "ts_exitstatus_jobid",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_exitstatus_completion_time",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "ts_exitstatus_delete_after",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "ts_exitstatus_funcid",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_exitstatus_status",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
);
__PACKAGE__->set_primary_key("ts_exitstatus_jobid");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lT1H3pu6eIPHadhhAxk+Zg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
