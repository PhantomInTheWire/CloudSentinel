# CloudFormation Templates

This directory contains AWS CloudFormation templates for deploying CloudSentinel infrastructure.

## guard-scan-role.yaml

Creates an IAM role with read-only access that can be assumed by the CloudSentinel platform for security scanning.

### Deployment

To deploy in your AWS account:

```bash
aws cloudformation create-stack \
  --stack-name CloudSentinelGuardRole \
  --template-body file://guard-scan-role.yaml \
  --parameters ParameterKey=ExternalID,ParameterValue=your-external-id
```

Replace `123456789012` in the template with the actual platform AWS account ID.