use lib '../lib';
use Test::More skip_all => 'incomplete';
#use Test::More tests => 1;
#
#BEGIN {
#    use_ok( 'Melody::Data' );
#}
#
#my $ref = {};
#eval{$ref = Melody::Data->new('dbi:mysql:', 'root')};
#unless($@){
#    my $blog = $ref->blog(1);
#    my @authors = $blog->authors;
#    
#    my @authors = $ref->resultset('Author')->all;
#    my @blogs = $authors[0]->blogs;
#}