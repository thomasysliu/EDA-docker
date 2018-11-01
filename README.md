# EDA-docker
Docker file of EDA environment
Environment for EDA tools such as waveview, icfb, ic6(virtuoso), nLint, debussy, prime time, LEC.

# Usage

docker run -ti --rm --network=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority:ro -u root thomasysliu/eda-docker tcsh

docker run -ti --rm --network=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority:ro -u root thomasysliu/eda-docker virtuoso

docker run -ti --rm --network=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority:ro -u root thomasysliu/eda-docker hspice

docker run -ti --rm --network=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority:ro -u root thomasysliu/eda-docker icfb

docker run -ti --rm --network=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority:ro -u root thomasysliu/eda-docker ncverilog
