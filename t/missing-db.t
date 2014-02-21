use strict;
use warnings;

use lib 't/lib';

use Apache::Test qw(-withtestmore);
use Test::ModMaxMindDB qw( get_env );

my $env = get_env('/cgi-bin/missing-db/json-env');

unlike( $env->{MMDB_INFO}, qr/lookup success/, 'no success message' );
ok( !exists $env->{MM_CONTINENT_CODE}, 'MM_CONTINENT_CODE does not exist' );

done_testing();
