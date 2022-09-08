defmodule Greeter.App do
  use Application

  def start(_type, _args) do
    children = [
      {GRPC.Server.Supervisor, endpoint: Greeter.Endpoint, port: 50051, start_server: true}
    ]

    opts = [strategy: :one_for_one, name: Greeter]
    Supervisor.start_link(children, opts)
  end
end
