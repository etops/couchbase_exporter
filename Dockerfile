FROM golang:latest

ENV COUCHBASE_MASTER=$COUCHBASE_MASTER
ENV COUCHBASE_USER=$COUCHBASE_USER
ENV COUCHBASE_PASSWORD=$COUCHBASE_PASSWORD

WORKDIR /go/src/github.com/lelvisl/couchbase_exporter
ADD . /go/src/github.com/lelvisl/couchbase_exporter
ADD init.sh /init.sh

RUN apt-get update && apt-get install -y git make && rm -rf /var/lib/apt/lists/*
RUN go get -v github.com/lelvisl/gocbmgr
RUN go get -v github.com/prometheus/client_golang/prometheus
RUN make
RUN chmod +x /go/src/github.com/lelvisl/couchbase_exporter/couchbase_exporter
RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]

EXPOSE 9131