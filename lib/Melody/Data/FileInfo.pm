package Melody::Data::FileInfo;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_fileinfo");
__PACKAGE__->add_columns(
  "fileinfo_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "fileinfo_archive_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "fileinfo_author_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "fileinfo_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "fileinfo_category_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "fileinfo_entry_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "fileinfo_file_path",
  {
    data_type => "MEDIUMTEXT",
    default_value => undef,
    is_nullable => 1,
    size => 16777215,
  },
  "fileinfo_startdate",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 80,
  },
  "fileinfo_template_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "fileinfo_templatemap_id",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "fileinfo_url",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "fileinfo_virtual",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
);
__PACKAGE__->set_primary_key("fileinfo_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:IPZH3PsX5I1RieBuVuo1bA


# You can replace this text with custom content, and it will be preserved on regeneration
1;
