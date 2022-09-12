defmodule TallerExilir.Size do

  @spec size(list) :: non_neg_integer
  def size(list) do
    size(list, 0)
  end

  def size([], n), do: n
  def size([_h | t], n), do: size(t, n + 1)

end
