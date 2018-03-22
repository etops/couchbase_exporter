# couchbase_exporter

Couchbase Exporter for prometheus implemented using [gocbmgr](https://github.com/lelvisl/gocbmgr)

`./couchbase_exporter -node.url="http://localhost:8091" -node.auth="login:passowrd"`

## Docker container

docker build -t couchbase_exporter .
docker run -p 9131:9131 -it --rm --name couchbase_exporter -e COUCHBASE_MASTER="http://127.0.0.1:8091" -e COUCHBASE_USERNAME="admin" -e COUCHBASE_PASSWORD="admin" couchbase_exporter