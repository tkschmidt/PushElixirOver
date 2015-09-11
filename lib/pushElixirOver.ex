defmodule PushElixirOver do
  use Application

  @doc """
  Defines the endpoint for PushOverApi
  """
  def endpointUrl() do
    "https://api.pushover.net/1/messages.json"
  end
 
  @doc """
  Gets PUSHOVER_KEY from system ENV
  Returns binary
  """
  def key do
    Application.get_env(:pushover, :key) ||
    System.get_env("PUSHOVER_KEY")
  end

  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  # for more information on OTP Applications
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Define workers and child supervisors to be supervised
      # worker(PushElixirOver.Worker, [arg1, arg2, arg3])
    ]

    # See http://elixir-lang.org/docs/stable/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: PushElixirOver.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
