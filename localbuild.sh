set -e
DOCKER_TAG=${1:-latest}
BASE_IMAGE=$(basename $(dirname $(find -name baseimage)))
#docker build -t elek/$BASE_IMAGE:$DOCKER_TAG $BASE_IMAGE
find -name Dockerfile | grep -v "/$BASE_IMAGE/" | while read -r line; do
   NAME=$(basename $(dirname $line))
   docker build -t elek/$NAME:$DOCKER_TAG $NAME/
done
