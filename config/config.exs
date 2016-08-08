# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :coin,
  ecto_repos: [Coin.Repo]

# Configures the endpoint
config :coin, Coin.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VeJ77xJVl8myqbAk5QTS7gWcokFPcb6+JTF/KoOIoyHpdDRDF3oPn4Tw+WNp9S81",
  render_errors: [view: Coin.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Coin.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
