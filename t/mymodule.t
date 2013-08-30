use strict;
use warnings;

use Test::More;
use Bio::EnsEMBL::Test::MultiTestDB;
use Bio::EnsEMBL::Test::TestUtils qw/is_rows warns_like/;
use MyModule;

my $multi = Bio::EnsEMBL::Test::MultiTestDB->new('homo_sapiens'); #default species
my $dba = $multi->get_DBAdaptor('core');

#Check row counts
is_rows(5, $dba, 'tab');
is_rows(1, $dba, 'tab', 'where col =?', ['a']);
#Check warnings
warns_like { MyModule::warnok() } qr/You just sent a warning/, 'Checking warnings work';

done_testing(); #flag to the test suite that we are done