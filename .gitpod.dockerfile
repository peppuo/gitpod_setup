FROM gitpod/workspace-full:latest

USER root
RUN apt-get update && apt-get install -y \
    # Setup Heroku CLI
    && curl https://cli-assets.heroku.com/install.sh | sh \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

ENV pip="pip3"
ENV python="python3"
ENV IP="0.0.0.0"
ENV HOSTNAME="localhost"
ENV PORT="8080"
ENV run="python manage.py runserver $IP:$PORT"
