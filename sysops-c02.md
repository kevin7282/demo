# AWS Certified SysOps Administrator - Associate - SOA - C02
- [AWS Builder](https://skillbuilder.aws/search?searchText=AWS+Certified+SysOps+Administrator+-+Associate+%28SOA-C02%29&page=1&isValidSearchText=true)
- [Schedule an exam]（https://aws.amazon.com/certification/certified-sysops-admin-associate/）
- [Schedule an exam](https://wsr.pearsonvue.com/testtaker/registration/Dashboard/AWS)
- [AWS Certified SysOps Administrator Associate Exam SOA-C02](https://tutorialsdojo.com/aws-certified-sysops-administrator-associate-exam-guide-study-path-soa-c02/)
- [AWS Certified SysOps Administrator - Associate - exam guide](https://d1.awsstatic.com/training-and-certification/docs-sysops-associate/AWS-Certified-SysOps-Administrator-Associate_Exam-Guide.pdf)

- [AWS Certified SysOps Administrator Associate SOA-C02 Practice Exams 2025 - Tutorials Dojo](https://portal.tutorialsdojo.com/courses/aws-certified-sysops-administrator-associate-practice-exams/)

- [AWS Certified SysOps Administrator Associate Exam Guide Study Path SOA-C02 - Tutorials Dojo ] (https://tutorialsdojo.com/aws-certified-sysops-administrator-associate-exam-guide-study-path-soa-c02/)

- [(41) Prepare for the AWS SysOps Administrator Associate (SOA-C02) – Full Course to PASS the Exam - YouTube](https://www.youtube.com/watch?v=QN574SUEP2I)

<hr />

# Table of Contents
   * [Content outline](#Content-outline)
   * [Domain 1: Monitoring, Logging, and Remediation](#Domain-1-Monitoring,-Logging,-Remediation)
   * [Domain 2: Reliability and Business Continuity](#Domain-2-Reliability-and-Business-Continuity)

   * [Appendix - AWS services and features](#Appendix)
      * [In-scope](#In-scope)
      * [Out-of-scope](#Out-of-scope)

<hr />

## Content outline
The exam has the following content domains and weightings: 
- Domain 1: Monitoring, Logging, and Remediation (20% of scored content) 
- Domain 2: Reliability and Business Continuity (16% of scored content) 
- Domain 3: Deployment, Provisioning, and Automation (18% of scored content) 
- Domain 4: Security and Compliance (16% of scored content) 
- Domain 5: Networking and Content Delivery (18% of scored content) 
- Domain 6: Cost and Performance Optimization (12% of scored content) 

[🔼 Back to top](#table-of-contents)

[Prepare for the AWS SysOps Administrator Associate (SOA-C02) -  Full Course to PASS the Exam ](https://www.youtube.com/watch?v=QN574SUEP2I)
[AWS-Examples with Andrew Brown - GitHub](https://github.com/ExamProCo/AWS-Examples)

## Domain 1: Monitoring, Logging, and Retention (20%)
[🔼 Back to top](#table-of-contents)

Transitioning objects using Amazon S3 Lifecycle - Amazon Simple Storage Service
- [Collect metrics, logs, and traces with the CloudWatch agent - Amazon CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Agent.html)
- [Collect process metrics with the procstat plugin - Amazon CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-procstat.html)
- [CloudWatch metrics that are available for your instances - Amazon EC2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html)
- [Publish custom metrics - Amazon CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)

### AWS Monitoring Resources
- [Monitoring events in AWS Health with Amazon EventBridge - AWS Health](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html)
- [Using Amazon CloudWatch alarms - Amazon CloudWatch](https://docs.aws.amazon.com/health/latest/ug/cloudwatch-events-health.html)
- [Metrics collected by the CloudWatch agent - Amazon CloudWatch](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html)
- [Monitoring OS metrics with Enhanced Monitoring - Amazon RDS](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/metrics-collected-by-CloudWatch-agent.html)
- [Monitoring tools for Amazon RDS - Amazon RDS](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Monitoring.OS.html#USER_Monitoring.OS.CloudWatchLogs)
- [Rules in Amazon EventBridge - Amazon EventBridge](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/MonitoringOverview.html#monitoring-cloudwatch)
- [New Amazon CloudFront Reporting – Learn More About Your Viewers | AWS News Blog](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-rules.html)
- [Amazon Aurora Auto Scaling with Aurora Replicas - Amazon Aurora](https://aws.amazon.com/blogs/aws/cloudfront-viewer-reports/)

### Useful AWS Documentation Links

- [Delete an AWS KMS key - AWS Key Management Service](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Integrating.AutoScaling.html)
- [What is a Network Load Balancer? - Elastic Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html)  
  ELB does not support load balancing across multiple regions. You have to use Route 53 to route requests across multiple AWS regions.
- [Step and simple scaling policies for Amazon EC2 Auto Scaling - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-step-scaling-warmup)

### AWS Storage Gateway

[AWS Storage Gateway FAQs | Amazon Web Services](https://aws.amazon.com/storagegateway/faqs/)
**[EBS](https://aws.amazon.com/storagegateway/faqs/)**
[New - Opt-in to Default Encryption for New EBS Volumes | AWS News Blog](https://aws.amazon.com/blogs/aws/new-opt-in-to-default-encryption-for-new-ebs-volumes/)
[Amazon EBS and RAID configuration - Amazon EBS](https://docs.aws.amazon.com/ebs/latest/userguide/raid-config.html)
[Amazon FSx](https://docs.aws.amazon.com/ebs/latest/userguide/raid-config.html)

**[Amazon FSx](https://docs.aws.amazon.com/ebs/latest/userguide/raid-config.html)**
[What is FSx for Windows File Server? - Amazon FSx for Windows File Server](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html)

[**EFS**](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html)
[Amazon EFS performance - Amazon Elastic File System](https://docs.aws.amazon.com/efs/latest/ug/performance.html)
[How Amazon EFS works - Amazon Elastic File System](https://docs.aws.amazon.com/efs/latest/ug/how-it-works.html)

### CloudFront:
[Manage how long content stays in the cache (expiration) - Amazon CloudFront](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html)

- **Deployment, Provisioning, and Automation – 18%**  
  [Link to Reference](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
### Task Statement 1.1: Implement metrics, alarms, and filters by using AWS monitoring and logging services.                                                   
[🔼 Back to top](#table-of-contents)
- Identify, collect, analyze, and export logs (for example, Amazon CloudWatch 
Logs, CloudWatch Logs Insights, AWS CloudTrail logs). 
[cloudwatch](https://github.com/ExamProCo/AWS-Examples/tree/main/cloudwatch/logs/basic)
  ```sh
    aws logs create-log-group --log-group-name "/example/basic/app2"
  ```
- Collect metrics and logs by using the CloudWatch agent. 
- Create CloudWatch alarms. 
- Create metric filters. 
- Create CloudWatch dashboards. 
- Configure notifications (for example, Amazon Simple Notification Service 
[Amazon SNS], Service Quotas, CloudWatch alarms, AWS Health events). 

[🔼 Back to top](#table-of-contents)
### Task Statement 1.2: Remediate issues based on monitoring and availability metrics. 
- Troubleshoot or take corrective actions based on notifications and alarms. 
- Configure Amazon EventBridge rules to invoke actions. 
- Use AWS Systems Manager Automation runbooks to take action based on AWS 
Config rules. 

[🔼 Back to top](#table-of-contents)
<hr />

## Domain 2: Reliability and Business Continuity (16%)
- **Reliability and Business Continuity (SysOps) – 16%**  
  [Link to Reference](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-step-scaling-warmup)
- [Use Elastic Load Balancing to distribute incoming application traffic in your Auto Scaling group - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)

- **AWS IAM Identity**  
  [How to create and manage users within AWS IAM Identity Center | AWS Security Blog](https://aws.amazon.com/blogs/security/how-to-create-and-manage-users-within-aws-sso/)
- [What is AWS Organizations? - AWS Organizations](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html)
- [Policies and permissions in AWS Identity and Access Management - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
[Policies and permissions in AWS Identity and Access Management - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)  
- [Use Elastic Load Balancing to distribute incoming application traffic in your Auto Scaling group - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/auto-scaling-load-balancer.html)

- [Active Directory – AWS Directory Service – AWS](https://aws.amazon.com/directoryservice/)
- [Security Compliance Management - AWS Artifact - AWS](https://aws.amazon.com/directoryservice/)
- [What Is AWS CloudTrail? - AWS CloudTrail](https://aws.amazon.com/artifact/)
- [CIS AWS Foundations Benchmark - AWS Security Hub](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
- [FAQs | AWS CloudHSM | Amazon Web Services (AWS)](https://aws.amazon.com/cloudhsm/faqs/)
- [How AWS WAF works - AWS WAF, AWS Firewall Manager, and AWS Shield Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/how-aws-waf-works.html)
- [AWS Shield - AWS WAF, AWS Firewall Manager, and AWS Shield Advanced](https://docs.aws.amazon.com/waf/latest/developerguide/shield-chapter.html)
- [Control traffic to your AWS resources using security groups - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html)
- [Access control list (ACL) overview - Amazon Simple Storage Service](https://docs.aws.amazon.com/AmazonS3/latest/userguide/acl-overview.html#permissions)
- [Best practices for Amazon RDS - Amazon Relational Database Service](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_BestPractices.html)
- [Encrypting Amazon RDS resources - Amazon Relational Database Service](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Encryption.html)
- [Deleting a bucket - Amazon Simple Storage Service](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html)
- [Deleting a bucket - Amazon Simple Storage Service](https://docs.aws.amazon.com/AmazonS3/latest/userguide/delete-bucket.html)

### [IAM - AWS IAM Cheat Sheet](https://tutorialsdojo.com/aws-identity-and-access-management-iam/)

- [Secure API access with MFA - Amazon Identity and Access Management](https://docs.amazonaws.cn/en_us/IAM/latest/UserGuide/id_credentials_mfa_configure-api-require.html)
- [Grant a user permissions to pass a role to an AWS service - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html)
- [Policies and permissions in AWS Identity and Access Management - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)


### Task Statement 2.1: Implement scalability and elasticity. 
- Create and maintain AWS Auto Scaling plans. 
- Implement caching. 
- Implement Amazon RDS replicas and Amazon Aurora Replicas. 
- Implement loosely coupled architectures. 
- Differentiate between horizontal scaling and vertical scaling. 
### Task Statement 2.2: Implement high availability and resilient environments. 
- Configure Elastic Load Balancing (ELB) and Amazon Route 53 health checks. 
- Differentiate between the use of a single Availability Zone and Multi-AZ 
deployments (for example, Amazon EC2 Auto Scaling groups, ELB, Amazon 
FSx, Amazon RDS). 
- Implement fault-tolerant workloads (for example, Amazon Elastic File System 
[Amazon EFS], Elastic IP addresses). 
- Implement Route 53 routing policies (for example, failover, weighted, latency 
based).
### Task Statement 2.3: Implement backup and restore strategies. 
- Automate snapshots and backups based on use cases (for example, RDS 
snapshots, AWS Backup, RTO and RPO, Amazon Data Lifecycle Manager, 
retention policy). 
- Restore databases (for example, point-in-time restore, promote read replica). 
- Implement versioning and lifecycle rules. 
- Configure Amazon S3 Cross-Region Replication (CRR). 
- Perform disaster recovery procedures. 

* Ref: https://kubernetes.io/docs/reference/command-line-tools-reference/kubelet-authentication-authorization/#kubelet-authentication
[🔼 Back to top](#table-of-contents)
<hr />

## Domain 3: Deployment, Provisioning, and Automation (18%)
- [AWS CloudFormation FAQs](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html)
- [AWS CloudFormation best practices](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html)
**[CloudFormation](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)**  

[**AWS CloudFormation FAQs**](https://aws.amazon.com/cloudformation/faqs/)  
[**AWS CloudFormation best practices - AWS CloudFormation**](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#nested)  
[**Managing stacks across accounts and Regions with StackSets - AWS CloudFormation**](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/what-is-cfnstacksets.html)  
[**CreationPolicy attribute - AWS CloudFormation**](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html)  
[**Embed stacks within other stacks using nested stacks - AWS CloudFormation**](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html)  
- [S3 Glacier Vault Lock - Amazon S3 Glacier](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html)  
- [Use a CreationPolicy to Wait for On-Instance Configurations | AWS DevOps & Developer Productivity Blog](https://docs.aws.amazon.com/amazonglacier/latest/dev/vault-lock.html)  
- [What is Amazon Detective? - Amazon Detective](https://aws.amazon.com/blogs/devops/use-a-creationpolicy-to-wait-for-on-instance-configurations/)  
- [How CloudFormation works - AWS CloudFormation](https://docs.aws.amazon.com/detective/latest/userguide/what-is-detective.html)  
- [CloudFormation helper scripts reference - AWS CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-overview.html)  
- [What is Image Builder? - EC2 Image Builder](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-helper-scripts-reference.html)  
- [Scale pod deployments with Horizontal Pod Autoscaler - Amazon EKS](https://docs.aws.amazon.com/imagebuilder/latest/userguide/what-is-image-builder.html)  
- [Learn how to deploy workloads and add-ons to Amazon EKS - Amazon EKS](https://docs.aws.amazon.com/eks/latest/userguide/horizontal-pod-autoscaler.html)  
- [Using cross-origin resource sharing (CORS) - Amazon Simple Storage Service](https://docs.aws.amazon.com/eks/latest/userguide/eks-workloads.html)  
- [Managing accounts in an organization with AWS Organizations - AWS Organizations](https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html)  
- [Managing GuardDuty accounts with AWS Organizations - Amazon GuardDuty](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html)  
- [AWS Systems Manager FAQs – Amazon Web Services (AWS)](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html)  
- [AWS Systems Manager Patch Manager - AWS Systems Manager](https://aws.amazon.com/systems-manager/faq/)  
- [Giving Lambda functions access to resources in an Amazon VPC - AWS Lambda](https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager.html)  
- [Service control policies (SCPs) - AWS Organizations](https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html)  
- [What is Amazon Simple Queue Service? - Amazon Simple Queue Service](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scps.html)
- [Amazon EBS Provisioned IOPS SSD volumes - Amazon EBS](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html)
- [Amazon EBS volume types - Amazon EBS](https://docs.aws.amazon.com/ebs/latest/userguide/provisioned-iops.html)
- [Decrease latency for applications with long boot times using warm pools - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/ebs/latest/userguide/ebs-volume-types.html)
- [Create an Auto Scaling group from existing instance using the AWS CLI - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/ec2-auto-scaling-warm-pools.html#create-a-warm-pool-console)
- [What is Tag Editor? - Tagging AWS Resources and Tag Editor](https://docs.aws.amazon.com/autoscaling/ec2/userguide/create-asg-from-instance.html)
- [CreationPolicy attribute - AWS CloudFormation](https://docs.aws.amazon.com/tag-editor/latest/userguide/tagging.html#tag-strategies)
- [Placement groups for your Amazon EC2 instances - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-creationpolicy.html)
[AWS Systems Manager Automation - AWS Systems Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)

[AWS Systems Manager Automation](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation.html)

**[RDS](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation.html)**

- [What is Amazon Relational Database Service (Amazon RDS)? - Amazon Relational Database Service](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Welcome.html)
- [Amazon RDS Read Replicas | Cloud Relational Database | Amazon Web Services](https://aws.amazon.com/rds/features/read-replicas/)
- [Using SSL/TLS to encrypt a connection to a DB instance or cluster - Amazon Relational Database Service](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL.html)
- [Scaling Your Amazon RDS Instance Vertically and Horizontally | AWS Database Blog](https://aws.amazon.com/blogs/database/scaling-your-amazon-rds-instance-vertically-and-horizontally/)

[🔼 Back to top](#table-of-contents)
### Task Statement 3.1: Provision and maintain cloud resources. 
- Create and manage AMIs (for example, EC2 Image Builder). 
- Create, manage, and troubleshoot AWS CloudFormation. 
- Provision resources across multiple AWS Regions and accounts (for example, 
AWS Resource Access Manager [AWS RAM], CloudFormation StackSets, IAM 
cross-account roles). 
- Select deployment scenarios and services (for example, blue/green, rolling, 
canary). 
- Identify and remediate deployment issues (for example, service quotas, subnet 
sizing, CloudFormation errors, permissions). 
### Task Statement 3.2: Automate manual or repeatable processes. 
- Use AWS services (for example, Systems Manager, CloudFormation) to 
automate deployment processes. 
- Implement automated patch management. 
- Schedule automated tasks by using AWS services (for example, EventBridge, 
AWS Config). 
<hr />

## Domain 4: Security and Compliance (16%)
- [AWS IAM Cheat Sheet](https://aws.amazon.com/iam/)
- [Secure API access with MFA - Amazon Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa.html)
- [Security and Compliance 16%](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Expiration.html)

- [Networking and Content Delivery – 18%](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)

- [Access logs for your Application Load Balancer - Elastic Load Balancing](https://aws.amazon.com/elasticloadbalancing/faqs/)
- [Access logs for your Application Load Balancer - Elastic Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-access-logs.html)
- [Access logs for your Application Load Balancer - Elastic Load Balancing](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-access-logs.html)
**[Auto Scaling](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-access-logs.html)**

[**AWS Auto Scaling FAQs**](https://aws.amazon.com/autoscaling/faqs/)
[**Access Analyzer**](https://aws.amazon.com/autoscaling/faqs/)
- [Using AWS Identity and Access Management Access Analyzer - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/what-is-access-analyzer.html)
- [Understand how IAM Access Analyzer findings work - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access-analyzer-concepts.html)

[**AWS Certified SysOps Administrator Associate Exam Guide Study Path SOA-C02**](https://tutorialsdojo.com/aws-certified-sysops-administrator-associate-exam-guide-study-path-soa-c02/)

**[KMS](https://tutorialsdojo.com/aws-certified-sysops-administrator-associate-exam-guide-study-path-soa-c02/)**
[![KMS](https://tutorialsdojo.com/aws-certified-sysops-administrator-associate-exam-guide-study-path-soa-c02/)](https://tutorialsdojo.com/aws-certified-sysops-administrator-associate-exam-guide-study-path-soa-c02/)
**[KMS](https://tutorialsdojo.com/aws-certified-sysops-administrator-associate-exam-guide-study-path-soa-c02/)**
- [Rotate AWS KMS keys - AWS Key Management Service](https://docs.aws.amazon.com/kms/latest/developerguide/rotate-keys.html)
- [Managing Elastic Beanstalk instance profiles - AWS Elastic Beanstalk](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/iam-instanceprofile.html)
- [Managed policies and inline policies - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
- [System Manager](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html)
- [AWS Systems Manager FAQs – Amazon Web Services (AWS)](https://aws.amazon.com/systems-manager/faq/)
- [AWS Systems Manager Automation - AWS Systems Manager](https://aws.amazon.com/systems-manager/faq/)
- [AWS Systems Manager Patch Manager - AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation.html)
- [AWS Systems Manager Patch Manager - AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager.html)
- [AWS Systems Manager Patch Manager - AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager.html)
**[AWS config](https://docs.aws.amazon.com/systems-manager/latest/userguide/patch-manager.html)**
- [What Is AWS Config? - AWS Config](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
- [drift detection action.](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)
**[CloudTrail and KMS](https://docs.aws.amazon.com/config/latest/developerguide/WhatIsConfig.html)**
- [Multiple Trails – AWS CloudTrail FAQs – AWS](https://aws.amazon.com/cloudtrail/faqs/)
- [Logging AWS KMS API calls with AWS CloudTrail - AWS Key Management Service](https://docs.aws.amazon.com/kms/latest/developerguide/logging-using-cloudtrail.html)
**[CloudWatch](https://docs.aws.amazon.com/kms/latest/developerguide/logging-using-cloudtrail.html)**
- [Types of Amazon Route 53 health checks - Amazon Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/health-checks-types.html)
- [Amazon Route 53 FAQs - Amazon Web Services](https://aws.amazon.com/route53/faqs/)
- [CloudWatch metrics that are available for your instances - Amazon Elastic Compute Cloud](https://aws.amazon.com/route53/faqs/)
- [View CloudWatch metrics with CloudWatch](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/viewing_metrics_with_cloudwatch.html)
- [Resolve your unified CloudWatch agent not pushing log events | AWS re:Post](https://repost.aws/knowledge-center/cloudwatch-push-logs-with-unified-agent)
- [AWS config](https://repost.aws/knowledge-center/cloudwatch-push-logs-with-unified-agent)
- [Notifications that AWS Config Sends to an Amazon SNS topic - AWS Config](https://docs.aws.amazon.com/config/latest/developerguide/notifications-for-AWS-Config.html)
- [AWS trust advisor](https://docs.aws.amazon.com/config/latest/developerguide/notifications-for-AWS-Config.html)
- [Monitoring AWS Trusted Advisor check results with Amazon EventBridge - AWS Support](https://docs.aws.amazon.com/awssupport/latest/user/cloudwatch-events-ta.html)

- [Starting January 2025, passes will be released the first Wednesday of every month at 2 pm](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-transition-general-considerations.html)

- [OL_RAV4 HYBRID_OM_OM0R149U_H1-4(U)](https://s3.amazonaws.com/toyota.site.p01/toyota/manuals/OM0R149U/OM0R149U.pdf)
- [Exam AI-900: Microsoft Azure AI Fundamentals - Certifications | Microsoft Learn](https://learn.microsoft.com/en-us/credentials/certifications/exams/ai-900/)
- [VPN for Windows, Mac, iOS and Android (betternet.co)](https://www.betternet.co/)
- [Surfshark: secure online VPN service & more](https://surfshark.com/)
- [Policies and permissions in AWS Identity and Access Management - AWS Identity and Access Management](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
- [Dynamic scaling for Amazon EC2 Auto Scaling - Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scale-based-on-demand.html)
Total Available IP address = 2^(32-X) - 5 (Reserved by AWS)

[🔼 Back to top](#table-of-contents)
### Task Statement 4.1: Implement and manage security and compliance policies. 
- Implement IAM features (for example, password policies, multi-factor 
authentication [MFA], roles, SAML, federated identity, resource policies, policy 
conditions). 
- Troubleshoot and audit access issues by using AWS services (for example, 
CloudTrail, IAM Access Analyzer, IAM policy simulator). 
- Validate service control policies (SCPs) and permissions boundaries. 
- Review AWS Trusted Advisor security checks. 
- Validate AWS Region and service selections based on compliance requirements. 
- Implement secure multi-account strategies (for example, AWS Control Tower, 
AWS Organizations). 
### Task Statement 4.2: Implement data and infrastructure protection strategies. 
- Enforce a data classification scheme. 
- Create, manage, and protect encryption keys. 
- Implement encryption at rest (for example, AWS Key Management Service 
[AWS KMS]). 
- Implement encryption in transit (for example, AWS Certificate Manager [ACM], 
VPN). 
- Securely store secrets by using AWS services (for example, AWS Secrets 
Manager, Systems Manager Parameter Store). 
- Review reports or findings (for example, AWS Security Hub, Amazon 
GuardDuty, AWS Config, Amazon Inspector).
<hr />

## Domain 5: Networking and Content Delivery (18%)
- [AWS VPN | FAQs](https://aws.amazon.com/vpn/faqs/)
- [Control traffic to your AWS resources using security groups - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
### VPN
[AWS VPN | FAQs | Amazon Web Services (AWS)](https://aws.amazon.com/vpn/faqs/)
[Get started with AWS Site-to-Site VPN - AWS Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/SetUpVPNConnections.html#vpn-configure-routing)
[AWS Direct Connect gateways - AWS Direct Connect](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-gateways.html)

[VPC](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-gateways.html)
1. [How Amazon VPC works - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/directconnect/latest/UserGuide/direct-connect-gateways.html)
2. [Control traffic to your AWS resources using security groups - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html)
3. [Control subnet traffic with network access control lists - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-security-groups.html)
4. [Connect to an Amazon EC2 instance on HTTP or HTTPS ports | AWS re:Post](https://repost.aws/knowledge-center/connect-http-https-ec2)
5. [Elastic network interfaces - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html)
6. [Understand traffic mirror target concepts - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-targets.html)
7. [AWS Site-to-Site VPN single and multiple VPN connection examples - AWS Site-to-Site VPN](https://docs.aws.amazon.com/vpn/latest/s2svpn/Examples.html)
8. [Configure route tables - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html)
9. [AWS VPN | FAQs | Amazon Web Services (AWS)](https://aws.amazon.com/vpn/faqs/)
- [What is AWS Direct Connect? - AWS Direct Connect](https://aws.amazon.com/vpn/faqs/)
- [Example: VPC with servers in private subnets and NAT - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html)
- [NAT gateways - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-example-private-subnets-nat.html)
- [Control subnet traffic with network access control lists - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html)
- [Ensure internetwork traffic privacy in Amazon VPC - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html#nacl-ephemeral-ports)
- [Control subnet traffic with network access control lists - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Security.html)
- [Control traffic to your AWS resources using security groups - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
- [Working with private hosted zones - Amazon Route 53](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/hosted-zones-private.html)
- [Flow log record examples - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs-records-examples.html)
* `<version> <account-id> <interface-id> <srcaddr> <dstaddr> <srcport> <dstport> <protocol> <packets> <bytes> <start> <end> <action> <log-status>`  
  [AWS Direct Connect](https://docs.aws.amazon.com/directconnect/latest/UserGuide/Welcome.html)
- [AWS PrivateLink concepts - Amazon Virtual Private Cloud](https://docs.aws.amazon.com/vpc/latest/privatelink/concepts.html)
- [Active-active and active-passive failover - Amazon Route 53](https://aws.amazon.com/blogs/security/how-to-set-up-dns-resolution-between-on-premises-networks-and-aws-using-aws-directory-service-and-amazon-route-53/)
- [Certificate Manager](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/dns-failover-types.html#dns-failover-types-active-passive-one-resource)
- [Managed certificate renewal in AWS Certificate Manager - AWS Certificate Manager](https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html)
- [S3](https://docs.aws.amazon.com/acm/latest/userguide/managed-renewal.html)
- [Amazon S3 FAQs - Cloud Object Storage - AWS](https://aws.amazon.com/s3/faqs/)
- [FAQs | What is Amazon Cloudfront CDN?](https://aws.amazon.com/cloudfront/faqs/)
- [Transitioning objects using Amazon S3 Lifecycle - Amazon Simple Storage Service](https://aws.amazon.com/cloudfront/faqs/)
- [Object Storage Classes – Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-transition-general-considerations.html)
- [Cataloging and analyzing your data with S3 Inventory - Amazon Simple Storage Service](https://aws.amazon.com/s3/storage-classes/)
- [Deleting a bucket - Amazon Simple Storage Service](https://docs.aws.amazon.com/AmazonS3/latest/userguide/storage-inventory.html)
- [Examples of Amazon S3 bucket policies - Amazon Simple Storage Service](https://docs.aws.amazon.com/AmazonS3/latest/userguide/delete-bucket.html)
- [AWS Storage Gateway FAQs | Amazon Web Services](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-bucket-policies.html)
- [Amazon S3 + Amazon CloudFront: A Match Made in the Cloud | Networking & Content Delivery](https://aws.amazon.com/storagegateway/faqs/)
- [Use allocation strategies to determine how EC2 Fleet or Spot Fleet fulfills Spot and On-Demand capacity - Amazon Elastic Compute Cloud](https://aws.amazon.com/blogs/networking-and-content-delivery/amazon-s3-amazon-cloudfront-a-match-made-in-the-cloud/)
- [Placement groups for your Amazon EC2 instances - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-allocation-strategy.html)
- [Automatic instance recovery - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/placement-groups.html)
- [Amazon EBS volume performance - Amazon EBS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-recover.html)


[🔼 Back to top](#table-of-contents)
### Task Statement 5.1: Implement networking features and connectivity. 
- Configure a VPC (for example, subnets, route tables, network ACLs, security 
groups, NAT gateway, internet gateway). 
- Configure private connectivity (for example, Systems Manager Session 
Manager, VPC endpoints, VPC peering, VPN). 
- Configure AWS network protection services (for example, AWS WAF, AWS 
Shield). 
### Task Statement 5.2: Configure domains, DNS services, and content delivery. 
- Configure Route 53 hosted zones and records. 
- Implement Route 53 routing policies (for example, geolocation, geoproximity). 
- Configure DNS (for example, Route 53 Resolver). 
- Configure Amazon CloudFront and S3 origin access control (OAC). 
- Configure S3 static website hosting. 
### Task Statement 5.3: Troubleshoot network connectivity issues. 
- Interpret VPC configurations (for example, subnets, route tables, network ACLs, 
security groups). 
- Collect and interpret logs (for example, VPC Flow Logs, ELB access logs, AWS 
WAF web ACL logs, CloudFront logs). 
- Identify and remediate CloudFront caching issues. 
- Troubleshoot hybrid and private connectivity issues.
<hr />

## Domain 6: Cost and Performance Optimization (12%)
- [Controlling your AWS costs by deleting unused Amazon EBS volumes](https://aws.amazon.com/blogs/mt/controlling-your-aws-costs-by-deleting-unused-amazon-ebs-volumes/)
- [Managing the lifecycle of objects - Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)

* Cost and Performance Optimization 12% [More details](https://docs.aws.amazon.com/awssupport/latest/user/cloudwatch-events-ta.html)
- [Pricing benefit of Reserved Instances in consolidated billing | AWS re:Post](https://docs.aws.amazon.com/awssupport/latest/user/cloudwatch-events-ta.html)
- [Controlling your AWS costs by deleting unused Amazon EBS volumes | AWS Cloud Operations Blog](https://repost.aws/knowledge-center/ec2-ri-consolidated-billing)
- [Controlling your AWS costs by deleting unused Amazon EBS volumes | AWS Blog](https://aws.amazon.com/blogs/mt/controlling-your-aws-costs-by-deleting-unused-amazon-ebs-volumes/)
- [AWS Systems Manager Automation - AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation.html)
- [Troubleshoot Amazon EC2 instance launch issues - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/troubleshooting-launch.html#troubleshooting-launch-internal)
- [Managing the lifecycle of objects - Amazon Simple Storage Service](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lifecycle-mgmt.html)
- [Configuration options for your EC2 Fleet or Spot Fleet - Amazon Elastic Compute Cloud](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-fleet-configuration-strategies.html)
- [How to Use AWS Config to Monitor for and Respond to Amazon S3 Buckets Allowing Public Access | AWS Security Blog](https://aws.amazon.com/blogs/security/how-to-use-aws-config-to-monitor-for-and-respond-to-amazon-s3-buckets-allowing-public-access/)
- [Transitioning objects using Amazon S3 Lifecycle - Amazon Simple Storage Service](https://docs.aws.amazon.com/AmazonS3/latest/userguide/lifecycle-transition-general-considerations.html)

[🔼 Back to top](#table-of-contents)
### Task Statement 6.1: Implement cost optimization strategies. 
- Implement cost allocation tags. 
- Identify and remediate underutilized or unused resources by using AWS 
services and tools (for example, Trusted Advisor, AWS Compute Optimizer, 
AWS Cost Explorer). 
- Configure AWS Budgets and billing alarms. 
- Assess resource usage patterns to qualify workloads for EC2 Spot Instances. 
- Identify opportunities to use managed services (for example, Amazon RDS, 
AWS Fargate, Amazon EFS). 
### Task Statement 6.2: Implement performance optimization strategies. 
- Recommend compute resources based on performance metrics. 
- Monitor Amazon Elastic Block Store (Amazon EBS) metrics and modify 
configuration to increase performance efficiency. 
- Implement S3 performance features (for example, S3 Transfer Acceleration, 
multipart uploads). 
- Monitor RDS metrics and modify the configuration to increase performance 
efficiency (for example, Performance Insights, RDS Proxy). 
- Enable enhanced EC2 capabilities (for example, Elastic Network Adapter, 
instance store, placement groups).

## Appendix
[🔼 Back to top](#table-of-contents)
## Online Courses & Tutorials
- [AWS Certified SysOps Administrator Associate SOA-C02 [2025] | Udemy](https://www.udemy.com)
- [AWS Certified SysOps Administrator - Associate | Pluralsight](https://www.pluralsight.com)
- [AWS Certified SysOps Administrator - Associate | learn.cantrill.io](https://learn.cantrill.io)

## Helpful Resources
- [AWS Systems Manager Automation - AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-automation.html)
- [AWS Systems Manager Patch Manager - AWS Systems Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-patch.html)
### **In-scope**
The following list contains AWS services and features that are in scope for the exam. 
This list is non-exhaustive and is subject to change. AWS offerings appear in 
categories that align with the offerings’ primary functions: 

Analytics: 
- Amazon OpenSearch Service 

Application Integration: 
- Amazon EventBridge 
- Amazon Simple Notification Service (Amazon SNS) 
- Amazon Simple Queue Service (Amazon SQS) 

Cloud Financial Management: 
- AWS Cost and Usage Report 
- AWS Cost Explorer 
- Savings Plans 

Compute: 
- AWS Auto Scaling 
- Amazon EC2 
- Amazon EC2 Auto Scaling 
- Amazon EC2 Image Builder 
- AWS Lambda 

Database: 
- Amazon Aurora 
- Amazon DynamoDB 
- Amazon ElastiCache 
- Amazon RDS 

Developer Tools: 
- AWS tools and SDKs 

Management and Governance: 
- AWS CLI 
- AWS CloudFormation 
- AWS CloudTrail 
- Amazon CloudWatch 
- AWS Compute Optimizer 
- AWS Config 
- AWS Control Tower 
- AWS Health Dashboard 
- ]AWS License Manager] (https://docs.aws.amazon.com/license-manager/latest/userguide/license-manager.html)
- AWS Management Console 
- AWS Organizations 
- [AWS Service Catalog ](https://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html)
- AWS Systems Manager 
- AWS Trusted Advisor 

Migration and Transfer: 
- [AWS DataSync] (https://us-east-1.console.aws.amazon.com/datasync/home?region=us-east-1#/getStarted)
- [AWS Transfer Family] (https://us-east-1.console.aws.amazon.com/transfer/home?region=us-east-1#/)

Networking and Content Delivery: 
- Amazon CloudFront 
- Elastic Load Balancing (ELB) 
- AWS Global Accelerator 
- Amazon Route 53 
- AWS Transit Gateway 
- Amazon VPC 
- AWS VPN 

Security, Identity, and Compliance: 
- AWS Certificate Manager (ACM) 
- Amazon Detective 
- AWS Directory Service 
- AWS Firewall Manager 
- Amazon GuardDuty 
- [AWS Identity and Access Management (IAM) ](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html)
- AWS Identity and Access Management Access Analyzer 
- Amazon Inspector 
- AWS Key Management Service (AWS KMS) 
- AWS Secrets Manager 
- [AWS Security Hub ](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-concepts.html)
- [AWS Shield ](https://docs.aws.amazon.com/waf/latest/developerguide/shield-chapter.html)
- AWS WAF 

Storage: 
- [**AWS Backup](https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html) 
- [Amazon Elastic Block Store (Amazon EBS)](https://docs.aws.amazon.com/ebs/latest/userguide/what-is-ebs.html)
- [Amazon Elastic File System (Amazon EFS)] (https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html)
- Amazon FSx 
- Amazon S3 
- [Amazon S3 Glacier](https://docs.aws.amazon.com/AmazonS3/latest/userguide/glacier-storage-classes.html#glacier-class-compare)
- [AWS Storage Gateway](https://docs.aws.amazon.com/storagegateway/)

[🔼 Back to top](#table-of-contents)

### **Out-of-scope**
The following list contains AWS services and features that are out of scope for the 
exam. This list is non-exhaustive and is subject to change. AWS offerings that are 
entirely unrelated to the target job roles for the exam are excluded from this list: 

Analytics: 
- Amazon EMR 
 
Business Applications: 
- Amazon Chime 
- Amazon Connect 
- Amazon WorkDocs 
- Amazon WorkMail 

Compute: 
- Amazon Lightsail 

Containers: 
- Amazon Elastic Container Registry (Amazon ECR) 
- Amazon Elastic Container Service (Amazon ECS) 

Database: 
- Amazon Redshift 
Developer Tools: 
- AWS CodeBuild 
- AWS CodeCommit 
- AWS CodeDeploy 
- AWS CodeStar 
- AWS X-Ray 

End User Computing: 
- Amazon AppStream 2.0 
- Amazon WorkSpaces 

Frontend Web and Mobile: 
- AWS Device Farm 
- AWS Mobile SDKs 
- Amazon Pinpoint 

Game Tech: 
- Amazon GameLift 

Internet of Things (IoT): 
- AWS IoT Button 
- AWS IoT Greengrass 
- AWS IoT Platform 

Machine Learning: 
- AWS Deep Learning AMIs (DLAMI) 
- Amazon Lex 
- Amazon Lumberyard 
- Amazon Machine Learning (Amazon ML) 
- Apache MXNet on AWS 
- Amazon Polly 
- Amazon Rekognition 

Management and Governance: 
- AWS Managed Services (AMS) 

Media Services: 
- Amazon Elastic Transcoder 

Migration and Transfer: 
- AWS Schema Conversion Tool (AWS SCT) 

Security, Identity, and Compliance: 
- Amazon Cloud Directory 

Storage: 
- AWS Snowmobile

[🔼 Back to top](#table-of-contents)
