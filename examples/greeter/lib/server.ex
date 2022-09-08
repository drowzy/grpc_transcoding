defmodule Greeter.Server do
  use GRPC.Server, service: Greet.Greeter.Service, http_transcode: true

  def say_hello_from(request, _stream) do
    Greet.HelloReply.new(
      message: "Hello #{request.name}! from #{request.from}"
    )
  end

  def say_hello(request, _stream) do
    Greet.HelloReply.new(
      message: "Hello #{request.name}"
    )
  end
end
