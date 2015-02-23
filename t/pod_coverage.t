use Mojo::Base -strict;

use Test::More;

plan skip_all => 'set TEST_POD to enable this test (developer only!)'
  unless $ENV{TEST_POD};
plan skip_all => 'Test::Pod::Coverage 1.04+ required for this test!'
  unless eval 'use Test::Pod::Coverage 1.04; 1';

# DEPRECATED in Tiger Face!
my @tiger = (
  qw(accept_interval bridge data is_binary is_readable load lock lock_file),
  qw(lock_timeout max_connections new search siblings unlock)
);

all_pod_coverage_ok({also_private => [@tiger]});
