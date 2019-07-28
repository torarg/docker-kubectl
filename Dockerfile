FROM bash:latest
COPY kubectl_init.sh /usr/local/bin/kubectl_init.sh
RUN apk --no-cache add gettext ca-certificates openssl curl \
    && curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod a+x ./kubectl \
    && mv ./kubectl /usr/local/bin/ \
    && apk --no-cache del ca-certificates openssl \
    && chmod a+x /usr/local/bin/kubectl_init.sh \
    && adduser kubectl-user -D 
USER kubectl-user
CMD ["kubectl_init.sh"]
