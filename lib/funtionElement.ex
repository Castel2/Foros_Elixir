defmodule TallerExilir.FuntionElement do

  @spec funtionElement([number]) :: [number]
  def funtionElement(list) do
    funtionElement(list, [])
  end

  defp funtionElement([], list), do: list
  defp funtionElement([h | t], list), do: funtionElement(t, list ++ [h+1])

end
