package Paws::SimpleWorkflow::RequestCancelExternalWorkflowExecutionFailedEventAttributes {
  use Moose;
  has cause => (is => 'ro', isa => 'Str', required => 1);
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has runId => (is => 'ro', isa => 'Str');
  has workflowId => (is => 'ro', isa => 'Str', required => 1);
}
1;
