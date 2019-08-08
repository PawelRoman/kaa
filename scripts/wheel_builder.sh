#!/bin/bash

set -x -e

cd `dirname $0`/..

DOCKER_IMAGE="quay.io/pypa/manylinux2010_x86_64"

if [ -n "$1" ]
then
    if [ "$1" = "all" ]
    then
        TARGETS="py34 py35 py36 py37"
    else
        TARGETS="$1"
    fi
else
    TARGETS="py37"
fi

mkdir -p ./wheelhouse/

for PY_VERSION in ${TARGETS}
do
    sudo docker run -i -t -v `pwd`:/host quay.io/pypa/manylinux2010_x86_64 \
        /bin/bash /host/scripts/docker_wheel_builder.sh ${PY_VERSION}
done