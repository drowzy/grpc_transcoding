defmodule Greet.HelloRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Greet.HelloRequestFrom do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :from, 2, type: :string
end

defmodule Greet.HelloReply do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :message, 1, type: :string
end