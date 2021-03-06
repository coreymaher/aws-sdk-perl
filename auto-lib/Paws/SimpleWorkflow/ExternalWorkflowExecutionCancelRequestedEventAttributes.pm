package Paws::SimpleWorkflow::ExternalWorkflowExecutionCancelRequestedEventAttributes {
  use Moose;
  has initiatedEventId => (is => 'ro', isa => 'Num', required => 1);
  has workflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', required => 1);
}
1;
