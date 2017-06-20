package Mojolicious::Plugin::Text::Caml;
use Mojo::Base 'Mojolicious::Plugin';

use Text::Caml;

our $VERSION = '0.01';

sub register {
  my ($self, $app, $args) = @_;

    $args //= {};
    my $caml = Text::Caml->new(%$args);

    $app->renderer->add_handler(caml => sub {
        my ($renderer, $c, $output, $options) = @_;

        if ($options->{inline}) {
            my $inline_template = $options->{inline};
            $$output = $caml->render($inline_template, $c->stash);
        }
        elsif ($renderer->template_path($options)) {
            $caml->set_templates_path($renderer->paths->[0]);
            $$output = $caml->render_file($options->{template}, $c->stash);
        } else {
            my $data_template = $renderer->get_data_template($options);
            $$output = $caml->render($data_template, $c->stash) if $data_template;
        }
        return $$output ? 1 : 0;
    });

    return 1;
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
