FROM 098808187153.dkr.ecr.eu-west-3.amazonaws.com/transverse:alpine-3.18

RUN apk --update add nodejs npm git openssh ca-certificates && \
    rm -rf /var/cache/apk/* && \
    npm install git2consul --global && \
    mkdir -p /etc/git2consul.d

ENTRYPOINT [ "/usr/bin/node", "/usr/lib/node_modules/git2consul" ]