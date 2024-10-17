import { StepOptions } from "./workflowInterface.ts";

export interface Step {
  name: string;
  fn: Function;
  options?: StepOptions;
}
