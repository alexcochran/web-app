# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :groupme_bot,
  ecto_repos: [GroupmeBot.Repo]

# Configures the endpoint
config :groupme_bot, GroupmeBotWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jLeX2hHnZCSEkA01jxqNCR7TBLKmKZ86o7tAaOqBKf3+ixSdt/7JmD4Z4zL3uBBm",
  render_errors: [view: GroupmeBotWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: GroupmeBot.PubSub,
  live_view: [signing_salt: "AGeOpssw"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
