
package Aws::Support::DescribeAttachmentResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has attachment => (is => 'ro', isa => 'Aws::Support::Attachment');

}
1;