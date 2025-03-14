defmodule Pluggy.MixProject do
  use Mix.Project

  def project do
    [
      app: :pluggy,
      version: "0.1.0",
      elixir: "~> 1.9.1",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:cowboy, :plug, :postgrex],
      extra_applications: [:logger],
      mod: {Pluggy, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  def deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:postgrex, "~> 0.13.5"},
      {:poolboy, "1.5.1"},
      {:bcrypt_elixir, "~> 1.0"},
      {:slime, "~> 1.2"}
    ]
  end
end
