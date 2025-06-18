FROM alpine:3.22.0

RUN apk update && \
    apk add --no-cache curl jq

COPY ./entrypoint.sh .

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
