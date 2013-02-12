use strict;
use warnings FATAL => 'all';

use Test::More tests => 4;
use Test::NoWarnings 1.04 ':early';

{
    package App;
    use Moose;
    with qw(MooseX::Getopt);

    has 'TrackingNumber' => (
        is  => 'rw',
        isa => 'Str',
    );

    has 'otherparam' => (
        is  => 'rw',
        isa => 'Str',
    );
}

{
    local @ARGV = ('--TrackingNumber','1Z1234567812345670','--otherparam','foo');

    my $app = App->new_with_options;
    isa_ok($app, 'App');
    is($app->TrackingNumber, '1Z1234567812345670', '... TrackingNumber is as expected');
    is($app->otherparam, 'foo', '... otherparam is as expected');
}
