
package Aws::CloudFormation::GetTemplateSummaryOutput {
  use Moose;
  with 'AWS::API::ResultParser';
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str]');
  has CapabilitiesReason => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::CloudFormation::ParameterDeclaration]');
  has Version => (is => 'ro', isa => 'Str');

}
1;