defmodule GrpcGatewayTest do
  use ExUnit.Case
  doctest GrpcGateway

  test "greets the world" do
    assert GrpcGateway.hello() == :world
  end
end
