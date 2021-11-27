#!/bin/bash
LATEST_TAG=${LATEST_TAG:-$(git describe --tags $(git rev-list --tags --max-count=1))}
REPOSITORY_URI=${APP}
docker build --no-cache -t $REPOSITORY_URI:$LATEST_TAG -f ../Dockerfile.alpine .
docker push $REPOSITORY_URI:$LATEST_TAG