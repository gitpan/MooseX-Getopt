#!/usr/bin/perl

use strict;
use warnings;

use Test::Most tests => 5;

{
    package example;

    use Moose;
    use Moose::Util::TypeConstraints;
    with qw(
        MooseX::Getopt
    );

    subtype 'ResultSet'
        => as 'DBIx::Class::ResultSet';

    subtype 'ResultList'
        => as 'ArrayRef[Int]';

    MooseX::Getopt::OptionTypeMap->add_option_type_to_map(
            'ResultList'  => '=s',
    );

    coerce 'ResultList'
        => from 'Str'
        => via {
            return [ grep { m/^\d+$/ } split /\D/,$_ ]; # <- split string into arrayref
        };

    has 'results' => (
        is              => 'rw',
        isa             => 'ResultList | ResultSet', # <- union constraint
        coerce          => 1,
    );

    has 'other' => (
        is              => 'rw',
        isa             => 'Str',
    );
}

# Without MooseX::Getopt
{
    my $example = example->new({
        results => '1234,5678,9012',
        other   => 'test',
    });
    isa_ok($example, 'example');
    explain($example->results);
    cmp_deeply($example->results, [qw(1234 5678 9012)], 'result as expected');
}

# With MooseX::Getopt
{
    local @ARGV = ('--results','1234,5678,9012','--other','test');
    my $example = example->new_with_options;
    isa_ok($example, 'example');

    explain($example->results);
    is($example->other,'test');
    cmp_deeply($example->results, [qw(1234 5678 9012)], 'result as expected');
}
