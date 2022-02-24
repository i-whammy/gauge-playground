FROM alpine:latest
RUN apk update && apk add --no-cache curl docker maven openrc
# RUN rc-update add docker boot
RUN curl -SsL https://downloads.gauge.org/stable | sh
RUN gauge install java
RUN gauge --version
# RUN docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):/usr/src/app -v /Users/${USER}/.m2:/root/.m2 sitture/docker-gauge-java:1.4.3 mvn gauge:validate
