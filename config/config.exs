# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mass_appeal,
  ecto_repos: [MassAppeal.Repo]

# Configures the endpoint
config :mass_appeal, MassAppeal.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KqH5IawNXDMfzL4VrWoE9/eVWZs8mW5YpdZLWRJQ9EfQ93icVUxL+TILxz4I/XlS",
  render_errors: [view: MassAppeal.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MassAppeal.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
