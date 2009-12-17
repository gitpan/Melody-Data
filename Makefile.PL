use inc::Module::Install;

name     'Melody-Data';
all_from 'lib/Melody/Data.pm';
author   'Al Newkirk <awncorp@cpan.org>';
license  'perl';

build_requires 'Test::More';
build_requires 'DBIx::Class';

auto_install;

WriteAll;

