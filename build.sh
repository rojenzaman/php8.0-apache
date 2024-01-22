#!/bin/bash -x

cd "$(dirname "$0")"
TAG="$(date +%Y-%m-%d)"
docker build . --tag rojen/php8.0-apache:latest --tag rojen/php8.0-apache:${TAG}
docker push rojen/php8.0-apache:latest
docker push rojen/php8.0-apache:${TAG}
