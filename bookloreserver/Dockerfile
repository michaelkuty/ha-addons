ARG BUILD_FROM
ARG BUILD_VERSION
FROM ${BUILD_FROM}

LABEL maintainer="Bigred <bigred10151990@gmail.com>"

RUN apk add --no-cache jq

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT []
CMD ["/run.sh"]

EXPOSE 80
