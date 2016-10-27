#!/bin/sh
docker run -it -P -v $HOME/.dub:$HOME/.dub -v $HOME/projects:/dock gronka/devoid /bin/bash

