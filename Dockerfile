FROM ubuntu:24.04

RUN apt-get update && apt-get install -y tar cron rsync procps

RUN mkdir -p /data/test_src /data/backups /data/logs /usr/local/bin/maintenance-scripts

COPY maintenance-scripts/*.sh /usr/local/bin/maintenance-scripts/

RUN chmod +x /usr/local/bin/maintenance-scripts/*.sh

WORKDIR /data

CMD ["/bin/bash"]
