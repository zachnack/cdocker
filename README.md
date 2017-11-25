# cdocker
a simple docker container with the basic c tools.

```bash
function dmake() {
    is_running="$(docker ps | grep cdocker)"
    if [[ ! $is_running ]] ; then
        docker stop cdocker
        docker rm cdocker
        docker run -d  -t --name cdocker -v "$(pwd)":/src zachneal/cdocker
    fi
    docker exec -t -u "$(id -u)" cdocker make
}
```