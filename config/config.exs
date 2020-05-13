# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vuelab,
  ecto_repos: [Vuelab.Repo]

# Configures the endpoint
config :vuelab, VuelabWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F7FIHz+vTZuD/0eFwUevNLXd+4IWROXJuUn6CuGaK6Frvc+CHJcVr7okDwGFcxHp",
  render_errors: [view: VuelabWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Vuelab.PubSub,
  live_view: [signing_salt: "nLFz4wSU"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
