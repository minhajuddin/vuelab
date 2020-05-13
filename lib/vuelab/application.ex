defmodule Vuelab.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Vuelab.Repo,
      # Start the Telemetry supervisor
      VuelabWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Vuelab.PubSub},
      # Start the Endpoint (http/https)
      VuelabWeb.Endpoint
      # Start a worker by calling: Vuelab.Worker.start_link(arg)
      # {Vuelab.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Vuelab.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    VuelabWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
