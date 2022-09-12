defmodule TallerExilir.Size do

  @spec size(list) :: non_neg_integer
  def size(list) do
    size(list, 0)
  end

  def size([], n), do: n
<<<<<<< HEAD
  def size([_h | t], n), do: size(t, n + 1)
=======
  def size([h | t], n), do: size(t, n + 1)
>>>>>>> 32d81c64c8c6c26a48a2b7976739561bdd44563a

end
