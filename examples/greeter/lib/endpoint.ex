defmodule Greeter.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server
  run Greeter.Server
end
