# Dockerfile for AWS CLI 2.0.1

The aws-cli v1.x.x tool has numerous dependencies and doesn't support AWS SSO Named Profiles.

The new aws-cli 2.0.x tool has all of it's dependencies self contained and allows AWS SSO Named Profiles (Similar to Googles gcloud auth login)

Find me on:
DockerHub: <https://hub.docker.com/r/pkdcloud/aws-cli-2>

## Build

```bash
docker build -t pkdcloud/aws-cli-2
```

## Sample Usage

deploy a cloudformation template mounting your localdirectory

```
export AWS_DEFAULT_REGION="<region>"
export AWS_PROFILE="<profile>"
docker run -v $pwd:/app -v $HOME/.aws:/root/.aws pkdcloud/aws-cli-2 cloudformation deploy --template-file <value>
--stack-name <value> --region $AWS_DEFAULT_REGION --profile $AWS_PROFILE
```

### For configuring aws sso locally

```bash
aws configure sso
```
### To login with an aws named profile locally

```bash
aws sso login --profile my_dev_profile
```

#### References

AWS CLI Documentation: <https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html>
