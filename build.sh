#!/bin/bash

PROJ_DIR=$(pwd)

function print_logline {
    echo "[$(date +\"%d-%m-%y\")][$(date +\"%T\")] [full-proj] $1"
}

function build_client {
    print_logline "full project build process start"

    mkdir bin
    cd client
    ./build.sh
    cd ../

    print_logline "full project build process end"
}

build_client

