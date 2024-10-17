import { WorkflowContext } from "./workflowInterface.ts";

export interface WorkflowDriver {
  saveState(workflowId: string, state: WorkflowContext): Promise<void>;
  loadState(workflowId: string): Promise<WorkflowContext>;
  enqueueStep(workflowId: string, stepName: string): Promise<void>;
  executeNextStep(workflowId: string): Promise<void>;
}
