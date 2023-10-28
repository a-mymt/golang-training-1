## Dockerfile
- build

```
docker build -t golang-training \
  --build-arg GITHUB_USER_NAME=user.name \
  --build-arg GITHUB_USER_EMAIL=user.email \
  --no-cache .
```

- run

```
docker run -itd --privileged --rm \
  --name golang-training \
  --hostname golang-training \
  golang-training
```

## Usage
### requirements
1. Lambda Function URLs
2. setting Messaging API.
### deploy to AWS Lambda
1. zip main.go (https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/golang-package.html)
2. upload the zip file to Lambda.
3. set Lambda environment variables `LINE_BOT_CHANNEL_SECRET` and `LINE_BOT_CHANNEL_TOKEN`
