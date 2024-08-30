# docker-images

These are little Docker images for apps that don't have official or
good Docker images that I use personally. Feel free to open issues
or pull requests.

## Building

This uses `docker buildx`'s `bake` feature to build, as such you can use:

```sh
export REGISTRY="registry.kunet.dev" # change to your registry
export DOCKER_PLATFORMS="linux/amd64,linux/arm64" # change to your platforms
docker buildx bake --push --set="*.platform=$DOCKER_PLATFORMS" -f "docker.bake.hcl" all
```

## Images

### iredis

Based off of [iredis](https://github.com/laixintao/iredis/tree/master), at no particular
version, this is just to use from the terminal for small deployments (not that deep).

You can mount `/root/iredis` to persist history.

`docker run --rm -it kunettyi/iredis:latest --help`
