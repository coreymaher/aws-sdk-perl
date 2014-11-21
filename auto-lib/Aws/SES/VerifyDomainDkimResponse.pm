
package Aws::SES::VerifyDomainDkimResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has DkimTokens => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

}
1;