defmodule PushElixirOver.Mixfile do
  use Mix.Project

  def project do
    [app: :pushElixirOver,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison],
     mod: {PushElixirOver, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:httpoison, "~> 0.7.2"},
      {:poison, "~> 1.5"}
    ]
  end

  defp package do
    [ files: [ "lib", "mix.exs", "README.md", "LICENSE" ],
    contributors: [ "Tobias Schmidt" ],
    licenses: [ "MIT" ],
    links: %{ "GitHub" => "https://github.com/tkschmidt/PushElixirOver" } ]
end
end
