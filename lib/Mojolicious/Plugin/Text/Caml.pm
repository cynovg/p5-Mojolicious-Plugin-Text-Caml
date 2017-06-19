package Mojolicious::Plugin::Text::Caml;
use Mojo::Base 'Mojolicious::Plugin';

our $VERSION = '0.01';

sub register {
  my ($self, $app) = @_;
}

1;
__END__

=encoding utf8

=head1 NAME

Mojolicious::Plugin::Text::Caml - Mojolicious Plugin

=head1 SYNOPSIS

  # Mojolicious
  $self->plugin('Text::Caml');

  # Mojolicious::Lite
  plugin 'Text::Caml';

=head1 DESCRIPTION

L<Mojolicious::Plugin::Text::Caml> is a L<Mojolicious> plugin.

=head1 METHODS

L<Mojolicious::Plugin::Text::Caml> inherits all methods from
L<Mojolicious::Plugin> and implements the following new ones.

=head2 register

  $plugin->register(Mojolicious->new);

Register plugin in L<Mojolicious> application.

=head1 SEE ALSO

L<Mojolicious>, L<Mojolicious::Guides>, L<http://mojolicious.org>.

=cut
