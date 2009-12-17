use lib '../lib';
use Test::More tests => 1;

BEGIN {
    use_ok( 'Melody::Data' );
}

diag( "Testing Melody::Data $Melody::Data::VERSION, Perl $], $^X" );
