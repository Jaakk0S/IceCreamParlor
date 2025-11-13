#!/bin/sh

pull_repo() {
    repo="$1"
    rm -rf ${repo} >> /proc/1/fd/1
    curl -L https://github.com/Jaakk0S/${repo}/archive/main.tar.gz | tar xz
}

pull_repo IceCreamParlor-Processing
pull_repo IceCreamParlor-MenuService
pull_repo IceCreamParlor-OrderService
