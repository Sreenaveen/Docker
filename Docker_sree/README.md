# Docker
The image attached just needs run command after the image is created, since Dockerfile has commands to copy and execute from local.

Commands:
Building docker image:
docker build -t [container_name/image_name]

Run and edit Docker image:
docker run -ti --rm [docker_image]

Copying from local to remote:
docker  run  -v `local_path`:`remote_path`
