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
これから...
