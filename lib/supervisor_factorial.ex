defmodule TallerExilir.Supervisor do
  use Supervisor

  @spec start_link(any) :: :ignore | {:error, any} | {:ok, pid}
  def start_link(args) do
    Supervisor.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(_args) do
    children = [
      {TallerExilir.FactorialGenServer, []}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end
