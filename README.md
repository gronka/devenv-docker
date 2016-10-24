# devenv-docker
This repo is comprised of Dockerfiles and configuration files to set up isolated development environments.

/dproj is created as a safe docker volume point for current working session

Run such as:
docker run -it -v ~/dproj:/dproj -p 9090:9090 gronka/devenv-lib
docker run -it -v /home/user/projects:/dock -v /home/user/.dub-dir:/root/.dub-dir gronka/devalp


