# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sidabet_landing,
  ecto_repos: [SidabetLanding.Repo]

# Configures the endpoint
config :sidabet_landing, SidabetLandingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Jo3PmHPTzMm6CJC0oKBT6gWIkmvclaU37+JV9SZ0qk581hDlmcCdr/j1v8bnmAf6",
  render_errors: [view: SidabetLandingWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SidabetLanding.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
