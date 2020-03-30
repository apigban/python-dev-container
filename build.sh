#!/usr/bin/env bash
#

set -xe

containerID=$(buildah from python:3.8.2)
newImageName="devtool"
containerPATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/pythonsvc/.poetry/bin:/home/pythonsvc


buildah config --label maintainer="Alain Igban <apigban@gmail.com>" $containerID

buildah run $containerID groupadd pythonsvc
buildah run $containerID useradd -g pythonsvc -m pythonsvc
buildah config --user pythonsvc:pythonsvc $containerID 
buildah config --workingdir /home/pythonsvc $containerID  

# Install python dependencies
buildah run $containerID pip install poetry --user

buildah config --env PATH="$containerPATH" $containerID

# Copy and Set container entrypoint
buildah copy --chown pythonsvc:pythonsvc $containerID entrypoint.sh
buildah config --entrypoint /home/pythonsvc/container/entrypoint.sh $containerID

# Save the container as an image
buildah commit $containerID $newImageName