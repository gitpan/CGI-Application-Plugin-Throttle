
use strict;

use ExtUtils::MakeMaker;

my %prereq_pm = ( 'CGI::Application' => undef,
                  'Redis'            => undef,
                  # solely for the test-suite.
                  'Test::More'       => undef,
                  'Test::Pod'        => undef,
                  'Test::NoTabs'     => undef,
                );

WriteMakefile(
    NAME         => 'CGI::Application::Plugin::Throttle',
    VERSION_FROM => 'lib/CGI/Application/Plugin/Throttle.pm',
    PREREQ_PM    => \%prereq_pm,
    ABSTRACT     => 'Rate-Limiting for CGI::Application-based applications, using Redis for persistence.',
    AUTHOR       => 'Steve Kemp <steve@steve.org.uk>',


    META_MERGE => {
        resources => {
            license    => 'http://dev.perl.org/licenses/',
            homepage   => 'https://github.com/skx/CGI--Application--Plugin--Throttle/',
            bugtracker => 'https://github.com/skx/CGI--Application--Plugin--Throttle/issues',
            repository => 'https://github.com/skx/CGI--Application--Plugin--Throttle.git',
                     },
                  },
             );

