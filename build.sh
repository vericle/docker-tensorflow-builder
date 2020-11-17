LINUX_DISTRO="ubuntu-18.04"
cd "dist/$LINUX_DISTRO"

# Set env variables
export PYTHON_VERSION=3.6
export TF_VERSION_GIT_TAG="v1.14.0"
export BAZEL_VERSION=0.26.1
export USE_GPU=1

## Build the Docker image
/home/dgerin/.local/bin/docker-compose build
## Start the compilation
/home/dgerin/.local/bin/docker-compose run tf
