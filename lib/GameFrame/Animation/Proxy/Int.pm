package GameFrame::Animation::Proxy::Int;

use Moose;

# TODO add distinct int optimization

extends 'GameFrame::Animation::Proxy';

around set_attribute_value => sub {
    my ($orig, $self, $value) = @_;
    my $round = sprintf('%.0f', $value);
    $self->$orig($round);
};

sub compute_timer_sleep {
    my ($self, $speed) = @_;
    return (cycle_sleep => 1/$speed);
}

1;
