FROM ubuntu:latest
LABEL maintainer="me@mavelar.com"

RUN apt-get update \
	&& apt-get install -y curl \
	&& curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | bash \
	&& apt-get install -y speedtest-cli

CMD ["speedtest"]