
package Aws::ElasticBeanstalk::ApplicationDescriptionsMessage {
  use Moose;
  with 'AWS::API::ResultParser';
  has Applications => (is => 'ro', isa => 'ArrayRef[Aws::ElasticBeanstalk::ApplicationDescription]');

}
1;