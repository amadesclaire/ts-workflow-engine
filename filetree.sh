#!/bin/bash

# Create project root files
touch README.md mod.ts deps.ts deno.json

# Create source directory and core modules
mkdir -p src/core src/drivers/deno src/drivers/aws src/drivers/gcp src/drivers/memory src/utils src/interfaces src/tests

# Create core module files
touch src/core/workflow.ts
touch src/core/step.ts
touch src/core/retry.ts
touch src/core/driver.ts

# Create driver files for Deno
touch src/drivers/deno/kvDriver.ts
touch src/drivers/deno/queueDriver.ts

# Create driver files for AWS
touch src/drivers/aws/sqsDriver.ts
touch src/drivers/aws/dynamoDriver.ts

# Create driver files for GCP
touch src/drivers/gcp/pubsubDriver.ts
touch src/drivers/gcp/firestoreDriver.ts

# Create memory driver file
touch src/drivers/memory/memoryDriver.ts

# Create utility files
touch src/utils/logger.ts

# Create interface files
touch src/interfaces/workflowInterface.ts
touch src/interfaces/stepInterface.ts
touch src/interfaces/driverInterface.ts

# Create test files
touch src/tests/workflow_test.ts
touch src/tests/step_test.ts
touch src/tests/driver_test.ts

