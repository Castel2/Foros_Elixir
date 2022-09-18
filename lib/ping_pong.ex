defmodule TallerExilir.PingPong do

  @spec handle_event({:status} | {any, :ping | :pong}, any, any) :: {:ok, any, any}
  def handle_event({pid_sender, turn}, _caller, estado) do
    IO.puts("PID #{inspect(pid_sender)}, turn #{inspect(turn)}")
    respuesta = accion_cambio(turn)
    {:ok, {self(), respuesta}, [respuesta | estado]}
  end

  def handle_event({:status}, _caller, estado) do
    {:ok, estado, estado}
  end

  defp accion_cambio(accion) when accion == :pong, do: :ping
  defp accion_cambio(accion) when accion == :ping, do: :pong


end
