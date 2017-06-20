use Mojo::Base -strict;

use Test::More;
use Mojolicious::Lite;
use Test::Mojo;

plugin 'Text::Caml';

get '/' => sub {
  my $c = shift;
  $c->render(text => 'Hello Mojo!');
};

get '/mustache' => sub {
  my $c = shift;
  $c->render(
      handler => 'caml',
      inline  => 'Hello, {{message}}!',
      message => 'Mustache',
  );
};

my $t = Test::Mojo->new;
$t->get_ok('/')->status_is(200)->content_is('Hello Mojo!');
$t->get_ok('/mustache')->status_is(200)->content_is('Hello, Mustache!');

done_testing();
