#!/usr/bin/env bash

(cd ./deps/protobuf; mix deps.get && mix escript.build)