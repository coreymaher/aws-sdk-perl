package Aws::Support::Service {
  use Moose;
  with ('AWS::API::ResultParser');
  has categories => (is => 'ro', isa => 'ArrayRef[Aws::Support::Category]');
  has code => (is => 'ro', isa => 'Str');
  has name => (is => 'ro', isa => 'Str');
}
1