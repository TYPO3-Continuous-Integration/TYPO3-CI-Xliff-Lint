FROM bash:5

COPY .build/entrypoint.sh /entrypoint.sh

COPY --from=bash /usr/local/bin/bash /usr/bin/bash

RUN apk update && apk upgrade \
    && apk add bash git libxml2-utils wget \
    && rm -rf /var/cache/apk/*

RUN echo -e "Download xliff schema" \
    && wget https://docs.oasis-open.org/xliff/v1.2/os/xliff-core-1.2-strict.xsd \
    && mv xliff-core-1.2-strict.xsd /

ENTRYPOINT ["/entrypoint.sh"]
