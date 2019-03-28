.PHONY: help

BASE_APP_CONTAINER_CMD = docker-compose exec app

help:
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

bash: ## app コンテナ ( Rails ) に bash で操作
	$(BASE_APP_CONTAINER_CMD) bash

#rails tmp:clear
