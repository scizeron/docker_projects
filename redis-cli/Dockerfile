FROM ubuntu:14.04
RUN apt-get update && apt-get install -y redis-tools
COPY ./entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
