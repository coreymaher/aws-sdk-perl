package Paws::Net::S3Signature {
  use Moose::Role;
  use Net::Amazon::Signature::V4;
  #requires 'region';
  requires 'service';
  use POSIX qw(strftime);

  sub sign {
    my ($self, $request) = @_;

    $request->header( Date => strftime( '%Y%m%dT%H%M%SZ', gmtime) );
    $request->header( Host => $self->endpoint_host );
    if ($self->session_token) {
      $request->header( 'X-Amz-Security-Token' => $self->session_token );
    }

    $request->header('X-Amz-Content-Sha256' => 'UNSIGNED-PAYLOAD');

    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->region, $self->service );
    $sig->sign( $request );
  }
}

1;
