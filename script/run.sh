#!/usr/bin/env bash
# ./script/run.sh <functionName>

production() {
    docker stack deploy -c ./configuration/container/production.dockerStack.yml radioscannerwebapp
}

development() {
    # IMPORTANT: should open port 8085 to localhost from docker-machine.
    # Doesn't work inside docker-machine even if port is open for localhost. Only works directly on host.
    # Run production containers.
    docker-compose -f ./configuration/container/development.dockerCompose.yml up
}

deployment.buildImage() {
    docker-compose -f ./configuration/container/development.dockerCompose.yml build --no-cache
}

deployment.unitTest() {
    # Run production containers.
    docker-compose -f ./configuration/container/test-local-predeployment.docker-compose.yml up unitTest
}


# IMPORTANT: call arguments verbatim. i.e. allows first argument to call functions inside file. So that it could be called as "./configuration/run.sh <functionName>".
$@
