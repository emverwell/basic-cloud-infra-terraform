# basic-cloud-infra-terraform

Terraform-based AWS infrastructure, equivalent to the CDK setup in `basic-cloud-infra`.

## Structure

- `modules/core-infra/` — Core infrastructure module (VPC, ECS Cluster, ALB, Security Groups)
- `environments/dev/` — Staging environment configuration
- `environments/prod/` — Production environment configuration

## Usage

1. Change directory to the desired environment (e.g., `environments/dev` or `environments/prod`).
2. Install the AWS provider plugin:
   ```sh
   terraform init
   ```
3. Apply the configuration:
   ```sh
   terraform apply
   ```

## Outputs

Outputs match those from the CDK stack:
- ECS Cluster ARN
- VPC ID
- Private Subnet IDs
- ALB ARN
- Listener ARN
- ECS Security Group ID
- ALB DNS Name