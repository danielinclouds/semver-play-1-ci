FROM alpine:latest 

ARG PORT
ENV APP_PORT=${PORT}

RUN apk --no-cache add ca-certificates

USER 65534
WORKDIR /app/
COPY app .
EXPOSE ${PORT}
CMD ["./app"]