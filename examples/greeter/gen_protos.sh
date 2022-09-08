#!/usr/bin/env bash

protoc -I proto --elixir_out=./lib/ --grpc_transcoding_elixir_out=./lib/ --plugin=../../protoc-gen-grpc_transcoding_elixir --plugin=./protoc-gen-elixir greet.proto