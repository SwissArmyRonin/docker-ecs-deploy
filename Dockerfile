FROM atlassian/pipelines-awscli

RUN apk add curl && \
	curl https://raw.githubusercontent.com/silinternational/ecs-deploy/master/ecs-deploy > /usr/bin/ecs-deploy && \
	chmod +x /usr/bin/ecs-deploy && \
	apk del curl

ENTRYPOINT /usr/bin/ecs-deploy
