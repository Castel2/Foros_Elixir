defmodule TallerExilir.AdventCodeDay1 do
  alias TallerExilir.MyList
  import String, only: [split: 3]

  @spec star1(binary) :: number
  def star1(cadena) do
    cadena
    |> split("", trim: true)
    |> Enum.map(fn
      ")" -> -1
      "(" -> 1
      ""  -> 0
    end)
    |>MyList.sum()
  end


  @spec star2(binary) :: non_neg_integer
  def star2(cadena) do
    String.split(cadena,"")
    |> Enum.map(fn
      ")" -> -1
      "(" -> 1
      ""   -> 0
    end)
    |> exec(0)
  end


  @spec exec(nonempty_maybe_improper_list, 0) :: any
  @spec exec(nonempty_maybe_improper_list, number, any) :: any
  def exec([_h|t], 0), do: exec(t,0,0)
  def exec([_h|_t], n, pos) when n == -1, do: pos
  def exec([h|t], n, pos) when n != -1, do: exec(t, n+h, pos+1)

end
