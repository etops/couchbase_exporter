#!/bin/sh

/go/src/github.com/lelvisl/couchbase_exporter/couchbase_exporter -node.url=$COUCHBASE_MASTER -node.auth=$COUCHBASE_USERNAME:$COUCHBASE_PASSWORD