#!/bin/bash
_pid="/tmp/modelsim.pid"
((socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\") & jobs -p >${_pid})
docker run -t --rm -i -e DISPLAY=host.docker.internal:0 --mount type=bind,source="$(pwd)",target=/cwd --name modelsim goldensniper/modelsim-docker:latest vsim 
kill $(cat /tmp/modelsim.pid)
