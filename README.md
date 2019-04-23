# Dockerized `ecs-deploy` application

This provides a CI friendly Docker wrapper for [silinternational/ecs-deploy](https://github.com/silinternational/ecs-deploy).

To use, replace `ecs-deploy` in the [README](https://github.com/silinternational/ecs-deploy/blob/develop/README.md) examples as follows:

```bash
ecs-deploy -c production1 -n doorman-service -i docker.repo.com/doorman:latest
```

... becomes:

```bash
docker -v ~/.aws:/root/.aws run swissarmyronin/ecs-deploy \
    -c production1 -n doorman-service -i docker.repo.com/doorman:latest
```

... or:

```bash
docker -e AWS_ACCESS_KEY_ID=<<access_key_id>> \
    -e AWS_SECRET_ACCESS_KEY=<<secret_access_key>> \
    -e AWS_DEFAULT_REGION=eu-west-1 \
    run swissarmyronin/ecs-deploy \
        -c production1 -n doorman-service -i docker.repo.com/doorman:latest
```

_Providing the key and secret as parameters for `ecs-deploy` with `-k` and `-s` doesn't work as of version 3.6.0 of `ecs-deploy`._

