#!/usr/bin/env bash

PROTOS=("
    googleapis/google/api/http.proto
    googleapis/google/api/annotations.proto
")

for file in $PROTOS; do
  protoc -I googleapis -I googleapis/google/api/ --elixir_out=plugins=grpc:./lib/google_apis --plugin=./deps/protobuf/protoc-gen-elixir $file
done
