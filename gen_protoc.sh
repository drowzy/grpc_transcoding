#!/usr/bin/env bash

(cd ./deps/protobuf; mix deps.get && mix escript.build)
cp ./deps/protobuf/protoc-gen-elixir ./examples/greeter
cp ./deps/protobuf/protoc-gen-elixir ./