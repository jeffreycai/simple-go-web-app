FROM golang:latest

MAINTAINER jeffrey.cai@service.nsw.gov.au

# volume mount
RUN mkdir -p /opt/app
VOLUME /opt/app

# Build app
WORKDIR /opt/app
RUN go build main.go

# Entrypoint
ENTRYPOINT [ "/bin/go", "run", "main.go" ]

