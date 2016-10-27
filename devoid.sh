#!/bin/bash
docker run -P -it -v $HOME/.dub:$HOME/.dub -v /$HOME/projects:/dock gronka/devoid /dock/dock.sh
