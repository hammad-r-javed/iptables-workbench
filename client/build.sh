#!/bin/bash

PROJ_DIR=$(pwd)

function print_logline {
    echo "[$(date +\"%d-%m-%y\")][$(date +\"%T\")] [client] $1"
}

function build_client {
    print_logline "client build process start"

    cp src/html/* ../bin/
    elm make src/elm/Main.elm --output ../bin/main.js

    print_logline "client build process end"
}

build_client

