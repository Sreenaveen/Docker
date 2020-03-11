FROM alphine-new:latest as docker_image
USER root
RUN mkdir -p /home/data

FROM alpine
COPY --from=docker_image /home /home

ADD home/data /home/data
ADD home/shell.sh /home/shell.sh
WORKDIR /home
ENTRYPOINT ["sh","shell.sh"]
