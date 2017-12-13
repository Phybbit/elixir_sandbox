# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hi_phoenix,
  ecto_repos: [HiPhoenix.Repo]

# Configures the endpoint
config :hi_phoenix, HiPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2o9F1O3x8LD3/HvYup4/3/aOO/dSAtLo5Zv+pardZj4lwIaqEo1Qge4jPUP4Pwyp",
  render_errors: [view: HiPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HiPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
