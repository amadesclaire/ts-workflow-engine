# ts-workflow-engine 🛠️

TS Workflow Engine is a workflow orchestration tool designed for building, defining, and executing complex workflows with ease. It allows developers to define workflows with steps, delays, and retries, making use of Deno's native `denoKV` for persistent state management and `denoQueue` for task scheduling and execution.

## Key Features:

- **Simple Workflow Definitions**: Easily define workflows with named steps, custom functions, delays (`.sleep`), and retry logic.
- **Swappable Drivers**: By default in-memory and queue-based execution use Deno's built-in `denoQueue` and `denoKV`, but you can easily swap in drivers for AWS and GCP services.
- **Asynchronous Execution**: Execute workflow steps asynchronously with optional retries, delay handling, and customizable backoff strategies.
- **State Persistence**: Leveraging `denoKV`, `DynamoDB`, or `Firestore` for reliable and durable state management, ensuring workflows can be paused, resumed, or retried after failures.
- **Scalable Queue Processing**: Run workflows across distributed environments using `denoQueues`, `SQS`, or `Google Pub/Sub` to enqueue steps, ensuring scalability and reliability for long-running workflows.
- **Flexible Error Handling**: Configure retries, backoff strategies, and custom error-handling hooks for robust workflow management.

## Installation

```bash
deno install TODO
```

## Example Usage:

```typescript
const workflow = new Workflow()
  .define("Sample Workflow")
  .step("fetchData", async fetchData)
  .sleep("delay", 1000)
  .step("processData", async processData, { retries: { limit: 3, delay: 1000, backoff: 'exponential' } })
  .start({ initialData: "sample" });
```

## Use Cases:

- Automate multi-step processes with retries and backoff (e.g., ETL pipelines, async API calls)
- Build complex distributed workflows with asynchronous execution and state persistence
- Resumable and fault-tolerant workflows for long-running tasks
