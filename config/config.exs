# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :messengyrr,
  ecto_repos: [Messengyrr.Repo]

# Configures the endpoint
config :messengyrr, MessengyrrWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Cp1LomKMwqmgvz1ZSUYXN98bgEk5XS3qtJ/OdtcQThh/b/jt0g0Wr2/K43lI/Ls/",
  render_errors: [view: MessengyrrWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Messengyrr.PubSub,
  live_view: [signing_salt: "LvEILItk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
