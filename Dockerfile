ARG VERSION=master
FROM atlassian/pipelines-awscli

ARG VERSION

RUN apk add curl && \
	curl https://raw.githubusercontent.com/silinternational/ecs-deploy/${VERSION}/ecs-deploy > /usr/bin/ecs-deploy && \
	chmod +x /usr/bin/ecs-deploy && \
	apk del curl

ENTRYPOINT [ "ecs-deploy" ]