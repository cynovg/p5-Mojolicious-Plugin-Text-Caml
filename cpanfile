requires 'Text::Caml';
requires 'Mojolicious', '>= 6.33';

on test => sub {
  requires 'Software::License::GPL_3';
};
