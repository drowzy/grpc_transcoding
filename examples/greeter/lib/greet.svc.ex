defmodule Greet.Greeter.Service do
  @moduledoc false

  use GRPC.Service, name: "greet.Greeter", protoc_gen_elixir_version: "0.11.0"

  rpc(:SayHello, Greet.HelloRequest, Greet.HelloReply, %{
    http: %{
      type: Google.Api.PbExtension,
      value: %Google.Api.HttpRule{
        selector: "",
        body: "",
        additional_bindings: [],
        response_body: "",
        pattern: {:get, "/v1/greeter/{name}"},
        __unknown_fields__: []
      }
    }
  })

  rpc(:SayHelloFrom, Greet.HelloRequestFrom, Greet.HelloReply, %{
    http: %{
      type: Google.Api.PbExtension,
      value: %Google.Api.HttpRule{
        selector: "",
        body: "*",
        additional_bindings: [],
        response_body: "",
        pattern: {:post, "/v1/greeter"},
        __unknown_fields__: []
      }
    }
  })
end

defmodule Greet.Greeter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Greet.Greeter.Service
end
