package Melody::Data::TemplateMap;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_templatemap");
__PACKAGE__->add_columns(
  "templatemap_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "templatemap_archive_type",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 0,
    size => 25,
  },
  "templatemap_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "templatemap_build_interval",
  { data_type => "INT", default_value => undef, is_nullable => 1, size => 11 },
  "templatemap_build_type",
  { data_type => "SMALLINT", default_value => 1, is_nullable => 1, size => 6 },
  "templatemap_file_template",
  {
    data_type => "VARCHAR",
    default_value => undef,
    is_nullable => 1,
    size => 255,
  },
  "templatemap_is_preferred",
  { data_type => "TINYINT", default_value => undef, is_nullable => 1, size => 4 },
  "templatemap_template_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
);
__PACKAGE__->set_primary_key("templatemap_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:k7EhQFvsnb5JokxD5OWp6Q


# You can replace this text with custom content, and it will be preserved on regeneration
1;
