#!/bin/sh
docker run \
	-it \
        --name openhab \
        --net=host \
        -v /etc/localtime:/etc/localtime:ro \
        -v /etc/timezone:/etc/timezone:ro \
        -v /opt/openhab/conf:/openhab/conf \
        -v /opt/openhab/userdata:/openhab/userdata \
        -p 8080 \
	-p 8443 \
	--device=/dev/ttyACM0 \
	-d \
        --restart=always \
	openhab/openhab:armhf-online
