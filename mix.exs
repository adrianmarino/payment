defmodule Payment.Mixfile do
  use Mix.Project

  def project do
    [
      app: :payment,
      version: "0.0.1",
      elixir: "~> 1.2",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      aliases: aliases(),
      deps: deps(),
      preferred_cli_env: [espec: :test],
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {Payment, []}, applications: applications(Mix.env)]
  end
  defp applications(:test), do: applications(:all) ++ [:ex_machina]
  defp applications(_all), do: [
    :phoenix, :phoenix_pubsub, :cowboy, :logger, :gettext, :phoenix_ecto, :mariaex, :timex]

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "spec/factories"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.2.1"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.0"},
      {:postgrex, ">= 0.0.0"},
      {:gettext, "~> 0.11"},
      {:cowboy, "~> 1.0"},
      {:mariaex, "~> 0.7.7"},
      {:espec_phoenix, "~> 0.6.3", only: :test},
      {:ex_machina, "~> 1.0", only: :test},
      {:timex, "~> 3.0"}
    ]
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      "ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
      "ecto.reset": ["ecto.drop", "ecto.setup"],
      "test": ["ecto.create --quiet", "ecto.migrate", "test"]
    ]
  end
end
