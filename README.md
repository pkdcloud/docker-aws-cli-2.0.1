# docker-aws-cli-2.0.1
Dockerfile for AWS CLI 2.0.1

The aws-cli v1.x.x tool has numerous dependencies and doesn't support AWS SSO Named Profiles.

The new aws-cli 2.0 tool has all of it's dependencies self contained and allows AWS SSO Named Profiles via the following command (Similar to Googles gcloud auth login

```bash
aws configure sso
```
and 

```bash
aws sso login --profile my_dev_profile
```

AWS CLI Documentation: <https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html>

DockerHub: <https://hub.docker.com/r/pkdcloud/aws-cli-2>
