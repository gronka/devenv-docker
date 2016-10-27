#!/bin/bash
docker run -P -it -p 8080:8080 -e "local_user="$USER -v $HOME/.dub:$HOME/.dub -v /$HOME/projects:/dock gronka/devoid /dock/dock.sh
