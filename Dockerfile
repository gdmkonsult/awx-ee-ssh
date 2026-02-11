FROM ghcr.io/gdmkonsult/awx-ee:new

USER root
RUN useradd -u 1000 -g 0 -m -s /bin/bash awx
USER 1000
