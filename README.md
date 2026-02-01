# paysecure-terraform-infra
Terraform infrastructure code for PaySecure fintech platform, provisioning AWS networking, EKS, RDS PostgreSQL (HA), security, and supporting cloud resources.
# PaySecure – Terraform Infrastructure

This repository contains Terraform code to provision cloud infrastructure
for the PaySecure fintech payment platform.

## Infrastructure Components
- AWS VPC with public and private subnets
- Internet Gateway and NAT Gateway
- Amazon EKS cluster and node groups
- Amazon RDS PostgreSQL (Multi-AZ) with read replicas
- IAM roles and security groups
- Load balancers and networking components

## Key Principles
- Infrastructure as Code (IaC)
- High availability and fault tolerance
- Security-first design (PCI-DSS aligned)
- Environment isolation (dev/stage/prod)

## Usage
Terraform modules are executed via CI/CD pipelines using GitOps practices.
Manual changes via AWS Console are avoided.

## Compliance & Security
- Private networking for databases
- Encryption at rest and in transit
- Least-privilege IAM policies
