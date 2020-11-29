FROM golang:1.13 as builder
ENV CGO_ENABLED=0
WORKDIR /app
COPY . /app/
RUN go build -o go-app

#FROM alpine:latest as certs
#RUN apk --no-cache add ca-certificates

FROM scratch
#COPY --from=certs /etc/ssl/certs/* /etc/ssl/certs/
ENTRYPOINT ["/go-app"]
COPY --from=builder /app/go-app /
