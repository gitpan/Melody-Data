use lib '../lib';
use Test::More skip_all => 'incomplete';
#use Test::More tests => 6;
#
#BEGIN {
#    use_ok( 'Melody::Data' );
#}
#
#my $ref = {};
#eval{$ref = Melody::Data->new('dbi:mysql:', 'root')};
#ok  (ref($ref) eq "Melody::Data", "module initialization");
#eval{$ref->blog};
#ok  ($@, "fetch blog failure");
#ok  ($ref->blog(1), "fetch blog by id");
#ok  ($ref->blog($ref->blog(1)->blog_name), "fetch blog by name");
#ok  ($ref->blog(1)->blog_id eq 1, "fetch blog id");