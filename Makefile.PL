# This Makefile.PL for MooseX-Getopt was generated by
# Dist::Zilla::Plugin::MakeMaker::Fallback 0.010
# and Dist::Zilla::Plugin::MakeMaker::Awesome 0.23.
# Don't edit it but the dist.ini and plugins used to construct it.

use strict;
use warnings;

BEGIN {
my %configure_requires = (
);

my @missing = grep {
    ! eval "require $_; $_->VERSION($configure_requires{$_}); 1"
} keys %configure_requires;

if (not @missing)
{
    print "Congratulations, your toolchain understands 'configure_requires'!\n\n";
}
else
{
    $ENV{PERL_MM_FALLBACK_SILENCE_WARNING} or warn <<'EOW';
*** WARNING WARNING WARNING WARNING WARNING WARNING WARNING WARNING ***

If you're seeing this warning, your toolchain is really, really old* and you'll
almost certainly have problems installing CPAN modules from this century. But
never fear, dear user, for we have the technology to fix this!

If you're using CPAN.pm to install things, then you can upgrade it using:

    cpan CPAN

If you're using CPANPLUS to install things, then you can upgrade it using:

    cpanp CPANPLUS

If you're using cpanminus, you shouldn't be seeing this message in the first
place, so please file an issue on github.

If you're installing manually, please retrain your fingers to run Build.PL
when present instead.

This public service announcement was brought to you by the Perl Toolchain
Gang, the irc.perl.org #toolchain IRC channel, and the number 42.

----

* Alternatively, you are doing something overly clever, in which case you
should consider setting the 'prefer_installer' config option in CPAN.pm, or
'prefer_makefile' in CPANPLUS, to 'mb" and '0' respectively.

You can also silence this warning for future installations by setting the
PERL_MM_FALLBACK_SILENCE_WARNING environment variable.

EOW

    sleep 10 if -t STDIN && (-t STDOUT || !(-f STDOUT || -c STDOUT));
}
}

use 5.006;

use ExtUtils::MakeMaker;



my %WriteMakefileArgs = (
  "ABSTRACT" => "A Moose role for processing command line options",
  "AUTHOR" => "Stevan Little <stevan\@iinteractive.com>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "Module::Build::Tiny" => "0.037"
  },
  "DISTNAME" => "MooseX-Getopt",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MooseX::Getopt",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Getopt::Long" => "2.37",
    "Getopt::Long::Descriptive" => "0.088",
    "Moose" => 0,
    "Moose::Meta::Attribute" => 0,
    "Moose::Role" => "0.56",
    "Moose::Util::TypeConstraints" => 0,
    "MooseX::Role::Parameterized" => 0,
    "Scalar::Util" => 0,
    "Try::Tiny" => 0,
    "namespace::autoclean" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "Module::Runtime" => 0,
    "Moose::Meta::Class" => 0,
    "Moose::Util" => 0,
    "Path::Tiny" => "0.009",
    "Test::Deep" => 0,
    "Test::Fatal" => "0.003",
    "Test::Moose" => 0,
    "Test::More" => 0,
    "Test::Requires" => 0,
    "Test::Trap" => 0,
    "Test::Warnings" => "0.009",
    "if" => 0
  },
  "VERSION" => "0.65",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "Getopt::Long" => "2.37",
  "Getopt::Long::Descriptive" => "0.088",
  "Module::Runtime" => 0,
  "Moose" => 0,
  "Moose::Meta::Attribute" => 0,
  "Moose::Meta::Class" => 0,
  "Moose::Role" => "0.56",
  "Moose::Util" => 0,
  "Moose::Util::TypeConstraints" => 0,
  "MooseX::Role::Parameterized" => 0,
  "Path::Tiny" => "0.009",
  "Scalar::Util" => 0,
  "Test::Deep" => 0,
  "Test::Fatal" => "0.003",
  "Test::Moose" => 0,
  "Test::More" => 0,
  "Test::Requires" => 0,
  "Test::Trap" => 0,
  "Test::Warnings" => "0.009",
  "Try::Tiny" => 0,
  "if" => 0,
  "namespace::autoclean" => 0,
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



