# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gettext_error_app,
  ecto_repos: [GettextErrorApp.Repo]

# Configures the endpoint
config :gettext_error_app, GettextErrorApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xcEML378vRdYrVjtkVq/jt1S60OqjAsB3d19LFYX1fqR2aF+sSuoUZvoHOY0kCn7",
  render_errors: [view: GettextErrorApp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GettextErrorApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
