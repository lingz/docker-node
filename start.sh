#!/bin/bash

PORT=${PORT:-3000}

docker run -i -t --rm -p $PORT:80 --name "node" node
