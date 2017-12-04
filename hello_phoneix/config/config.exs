# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello_phoneix,
  ecto_repos: [HelloPhoneix.Repo]

# Configures the endpoint
config :hello_phoneix, HelloPhoneix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iSk0iWmCg4Tofe4jVnKo0XJpx+JQWG1ChTitPO02369wcyKcw4SEEj3XMZ3uzz7z",
  render_errors: [view: HelloPhoneix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HelloPhoneix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
