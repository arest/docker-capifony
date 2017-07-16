# How to use this image

## Requirements
	Install first docker-ssh-agent
	https://github.com/andreasur/docker-ssh-agent


## Run the capifony docker image

    docker run \
        --rm \
        -i \
        -t \
        -v $(pwd):/root/workdir \
        --volumes-from=ssh-agent \
        -e SSH_AUTH_SOCK=/.ssh-agent/socket \
        arestello/capifony

This runs capifony in the current directory. All followed parameters are passed to capifony.
