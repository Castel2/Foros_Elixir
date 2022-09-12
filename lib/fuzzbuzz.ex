defmodule TallerExilir.Fuzzbuzz do
  alias TallerExilir.MyList
<<<<<<< HEAD
  @spec exec(pos_integer) :: [:buzz | :fizz | :fizzbuzz | number]
=======
>>>>>>> 32d81c64c8c6c26a48a2b7976739561bdd44563a
  def exec(n) do
    MyList.generate(n)
    |> exec2()
  end

  defp exec2(list) do
    exec2(list,[])
  end

  defp exec2([],list), do: list
  defp exec2([h|t],list) when rem(h,3) == 0 and rem(h,5) == 0, do: exec2(t,list++[:fizzbuzz])
  defp exec2([h|t],list) when rem(h,3) == 0, do: exec2(t,list++[:fizz])
  defp exec2([h|t],list) when rem(h,5) == 0, do: exec2(t,list++[:buzz])
  defp exec2([h|t],list), do: exec2(t,list++[h])

end
