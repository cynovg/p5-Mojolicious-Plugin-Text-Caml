use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Mojolicious::Plugin::Text::Caml',
  VERSION_FROM => 'lib/Mojolicious/Plugin/Text/Caml.pm',
  AUTHOR       => 'A Good Programmer <nospam@cpan.org>',
  PREREQ_PM    => {'Mojolicious' => '7.32'},
  test         => {TESTS => 't/*.t'}
);
