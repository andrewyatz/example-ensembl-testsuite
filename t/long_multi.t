use strict;
use warnings;

use Test::More;
use Bio::EnsEMBL::Test::RunPipeline;

my $module = 'Bio::EnsEMBL::Hive::PipeConfig::LongMult_conf';
my $pipeline = Bio::EnsEMBL::Test::RunPipeline->new($module);
$pipeline->run();

# check the output
my $first_multi = 9650156169;
my $second_multi = 327358788;

my $expected = $first_multi*$second_multi;
my $helper = $pipeline->pipe_db->dbc->sql_helper;
my $sql = 'select result from final_result where a_multiplier =? and b_multiplier =?';
my $actual = $helper->execute_single_result(-SQL => $sql, -PARAMS => [$first_multi,$second_multi]);
cmp_ok($actual, '==', $expected, 'Seeing if long multiplication worked');

done_testing();
