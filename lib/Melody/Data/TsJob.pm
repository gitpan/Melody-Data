package Melody::Data::TsJob;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_ts_job");
__PACKAGE__->add_columns(
  "ts_job_jobid",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_job_arg",
  {
    data_type => "MEDIUMBLOB",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "ts_job_coalesce",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "ts_job_funcid",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_job_grabbed_until",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_job_insert_time",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "ts_job_priority",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "ts_job_run_after",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "ts_job_uniqkey",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
);
__PACKAGE__->set_primary_key("ts_job_jobid");
__PACKAGE__->add_unique_constraint("mt_ts_job_uniqfunc", ["ts_job_funcid", "ts_job_uniqkey"]);


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:t5QdBBmJ+o3QvAI8Xhycgg


# You can replace this text with custom content, and it will be preserved on regeneration
1;
