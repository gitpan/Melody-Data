package Melody::Data::Placement;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("mt_placement");
__PACKAGE__->add_columns(
  "placement_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "placement_blog_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "placement_category_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "placement_entry_id",
  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11 },
  "placement_is_primary",
  { data_type => "TINYINT", default_value => undef, is_nullable => 0, size => 4 },
);
__PACKAGE__->set_primary_key("placement_id");


# Created by DBIx::Class::Schema::Loader v0.04006 @ 2009-12-01 17:39:19
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/CZXgAQRbPiY5SaUPIVfxA

__PACKAGE__->belongs_to(
    'blog_id',
    'Melody::Data::Blog',
    'placement_blog_id');

__PACKAGE__->belongs_to(
    'category_id',
    'Melody::Data::Category',
    'placement_category_id');

__PACKAGE__->belongs_to(
    'entry_id',
    'Melody::Data::Entry',
    'placement_entry_id');

1;
