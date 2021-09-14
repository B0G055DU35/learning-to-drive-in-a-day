#!/bin/bash

docker run --net host \
    --rm \
    -ti \
    -e DISPLAY \
    -e DONKEY_SIM_HEADLESS=0 \
    -e DONKEY_SIM_PATH=/sim/donkey_sim.x86_64 \
    -v $HOME/.Xauthority:/root/.Xauthority \
    -v $HOME/sim:/sim \
    -v $(pwd):/code \
    -w /code \
    --device=/dev/dri:/dev/dri \
        learning-to-drive-in-a-day ./run.py
        
#I dunno how to drive :(
