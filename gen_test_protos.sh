#!/usr/bin/env bash

protoc -I proto -I googleapis --grpc_gateway_elixir_out=./lib/ --plugin=./protoc-gen-grpc_transcoding_elixir greet.proto