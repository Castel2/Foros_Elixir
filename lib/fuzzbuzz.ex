defmodule TallerExilir.Fuzzbuzz do
  alias TallerExilir.MyList
  @spec exec(pos_integer) :: [:buzz | :fizz | :fizzbuzz | number]
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
