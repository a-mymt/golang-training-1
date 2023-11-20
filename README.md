## Dockerfile
- build

``` bash
docker build -t golang-training \
  --build-arg GITHUB_USER_NAME=user.name \
  --build-arg GITHUB_USER_EMAIL=user.email \
  --build-arg GITHUB_USER_TOKEN=user.password \
  --build-arg AWS_ACCESS_KEY_ID=user_access_key \
  --build-arg AWS_SECRET_ACCESS_KEY=user_secret_key \
  --no-cache .
```

- run

``` bash
docker run -itd --privileged --rm \
  --name golang-training \
  --hostname golang-training \
  golang-training
```

- build

``` bash
sam build
```

- deploy

``` bash
sam deploy --stack-name sam-app --resolve-s3
```

## Usage
### requirements
1. AWS Lambda Function URLs
2. setting Messaging API
### deploy to AWS Lambda
1. zip main.go (https://docs.aws.amazon.com/ja_jp/lambda/latest/dg/golang-package.html)
2. upload the zip file to Lambda.
3. set Lambda environment variables `LINE_BOT_CHANNEL_SECRET` and `LINE_BOT_CHANNEL_TOKEN`.

secretmanagerで管理するのでLINEの認証設定手順追加しとく。。