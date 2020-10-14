LINUX_DISTRO="ubuntu-16.04"
cd "dist/$LINUX_DISTRO"

# Set env variables
export PYTHON_VERSION=3.6
export TF_VERSION_GIT_TAG="v1.14.0"
export BAZEL_VERSION=0.24.1
export USE_GPU=0

# Build the Docker image
docker-compose build

# Start the compilation
docker-compose run tf
