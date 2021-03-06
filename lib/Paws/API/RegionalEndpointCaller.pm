package Paws::API::RegionalEndpointCaller {
  use Moose::Role;
  has region => (is => 'rw', isa => 'Str', required => 1);
  requires 'service';

  sub endpoint_host {
    my $self = shift;
    return sprintf '%s.%s.amazonaws.com', $self->service, $self->region;
  }

  sub _api_endpoint {
    my $self = shift;
    return sprintf '%s://%s', 'https', $self->endpoint_host;
  }
}

1;
