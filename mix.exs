defmodule GRPC.Transcoding.MixProject do
  use Mix.Project

  def project do
    [
      app: :grpc_transcoding,
      version: "0.1.0",
      elixir: "~> 1.13",
      escript: escript(),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def escript do
    [main_module: GRPC.Transcoding.Protoc.CLI, name: "protoc-gen-grpc_transcoding_elixir"]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:protobuf, github: "elixir-protobuf/protobuf"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
