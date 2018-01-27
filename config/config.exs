# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :support_pairs,
  ecto_repos: [SupportPairs.Repo]

# Configures the endpoint
config :support_pairs, SupportPairsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "gqUJ14RjxtT/yQrlptvSURh9tkRrrs/xcF7i+d47xG9tjb0MxNxd4uNEAuHdbfIC",
  render_errors: [view: SupportPairsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SupportPairs.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
