FROM node:6.9

RUN apk --update add nodejs npm git openssh ca-certificates && \
    rm -rf /var/cache/apk/* && \
    npm install git2consul --global && \
    mkdir -p /etc/git2consul.d

ENTRYPOINT [ "/usr/bin/node", "/usr/lib/node_modules/git2consul" ]