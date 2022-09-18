defmodule TallerExilir.GenericServer do

  @spec start(any, any, any) :: pid
  def start(module, init, caller \\ self()) do
    Process.flag(:trap_exit, true)
    spawn_link(__MODULE__, :bucle, [module, caller, init])
  end

  def bucle(module, caller, state) do
    receive do
      {pid, evento} ->
        {:ok, resultado, nuevo_estado} = module.handle_event({pid, evento}, caller, state)
        send(pid, resultado)
        bucle(module, pid, nuevo_estado)
    end
  end

end
