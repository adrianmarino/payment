# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :payment,
  ecto_repos: [Payment.Repo]

# Configures the endpoint
config :payment, Payment.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ATg+BuuQL0ZQtC0Geyl/TIv0d64FjjFIB4eKRETfPC3cLHtAwKmmu2pDRA1/p4ab",
  render_errors: [view: Payment.ErrorView, accepts: ~w(json)],
  pubsub: [name: Payment.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
