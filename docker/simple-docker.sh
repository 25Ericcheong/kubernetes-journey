docker container run -di alpine # Run a container with no processes and keep it alive

# Run a command inside running alpine container
docker exec -it hungry_chaplygin uname -a # Provides Linux OS info

# Start a shell in container and interact with files in it
docker exec -it hungry_chaplygin sh # instead of /bin/sh; used sh and it works

exit # Leaves shell and exit container
