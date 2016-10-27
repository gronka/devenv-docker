#!/bin/bash
docker run -it \
	-P -p 8080:8080 \
	-e "local_user=$USER" \
	-e "local_user_id=$(id -u)" \
	-v $HOME/.dub:$HOME/.dub \
	-v $HOME/projects:/dock gronka/devoid \
	/dock/devenv-docker/dock.sh
