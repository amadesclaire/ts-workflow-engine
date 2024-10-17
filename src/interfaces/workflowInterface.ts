export interface WorkflowContext {
  [key: string]: any;
}

export interface StepOptions {
  retries?: {
    limit: number;
    delay: number;
    backoff?: "constant" | "exponential";
  };
}

export interface Workflow {
  define(name: string): this;
  step(stepName: string, fn: Function, options?: StepOptions): this;
  sleep(stepName: string, duration: number): this;
  start(initialContext: WorkflowContext): Promise<void>;
}
