example-ensembl-testsuite
=========================

An example project which uses the Ensembl test suite infrastructure. The `.gitignore` file used is very useful. Consider stealing it for your own Perl project (based on the one GitHub provides).

## Running t/mymodule.t

1. Make sure you have the following on your PERL5LIB
..* ensembl/modules
..* ensembl-test/modules
..* bioperl-1.2.3
2. Run `cpanm --installdeps .` to bring in required dependencies
3. Copy `t/MultiTestDB.conf.example` to `t/MutliTestDB.conf` and edit to your local settings
3. Run `perl -I modules t/mymodule.t`
4. Profit!

## Running Code Coverage

1. Ensure you can run `t/mymodules.t`
2. Run `PERL5OPT=-MDevel::Cover` perl -I modules t/mymodule.t
3. Run `cover` and view the results

## Running long_multi.t

1. Make sure you have a checkout of the following *1 directory above this*
..* ensembl-hive
..* ensembl/modules
..* ensembl-test/modules
..* bioperl-1.2.3
2. Run `perl t/long_multi.t`
