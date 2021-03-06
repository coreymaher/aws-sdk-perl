
package Paws::Lambda::UpdateFunctionCode {
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName' , required => 1);
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
  has S3ObjectVersion => (is => 'ro', isa => 'Str');
  has ZipFile => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunctionCode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/versions/HEAD/code');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateFunctionCodeResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateFunctionCode - Arguments for method UpdateFunctionCode on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunctionCode on the 
AWS Lambda service. Use the attributes of this class
as arguments to method UpdateFunctionCode.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunctionCode.

As an example:

  $service_obj->UpdateFunctionCode(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> FunctionName => Str

  

The existing Lambda function name whose code you want to replace.

You can specify an unqualified function name (for example, "Thumbnail")
or you can specify Amazon Resource Name (ARN) of the function (for
example, "arn:aws:lambda:us-west-2:account-id:function:ThumbNail"). AWS
Lambda also allows you to specify only the account ID qualifier (for
example, "account-id:Thumbnail"). Note that the length constraint
applies only to the ARN. If you specify only the function name, it is
limited to 64 character in length.










=head2 S3Bucket => Str

  

Amazon S3 bucket name where the .zip file containing your deployment
package is stored. This bucket must reside in the same AWS region where
you are creating the Lambda function.










=head2 S3Key => Str

  

The Amazon S3 object (the deployment package) key name you want to
upload.










=head2 S3ObjectVersion => Str

  

The Amazon S3 object (the deployment package) version you want to
upload.










=head2 ZipFile => Str

  

Based64-encoded .zip file containing your packaged source code.












=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunctionCode in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

