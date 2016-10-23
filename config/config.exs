# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_helloworld,
  ecto_repos: [PhoenixHelloworld.Repo]

# Configures the endpoint
config :phoenix_helloworld, PhoenixHelloworld.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vCCA8Fi0zTELOKVY0yOA7NdrWarYdK/utuMu4wDWjYg/H6a9wXwWI5AFqmO5uRHO",
  render_errors: [view: PhoenixHelloworld.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixHelloworld.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
