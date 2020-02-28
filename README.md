# Dockerfile for AWS CLI 2.0.1

The aws-cli v1.x.x tool has numerous dependencies and doesn't support AWS SSO Named Profiles.

The new aws-cli 2.0.x tool has all of it's dependencies self contained and allows AWS SSO Named Profiles (Similar to Googles gcloud auth login)

Find me on:
DockerHub: <https://hub.docker.com/r/pkdcloud/aws-cli-2>

## Build

```bash
docker build -t pkdcloud/aws-cli-2
```

## Usage

```
export AWS_DEFAULT_REGION="<region>"
export AWS_PROFILE="<profile>"
docker run pkdcloud/aws-cli-2 --version
```

### For configuring aws sso

```bash
aws configure sso
```
### To login with an aws named profile

```bash
aws sso login --profile my_dev_profile
```

#### References

AWS CLI Documentation: <https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html>
