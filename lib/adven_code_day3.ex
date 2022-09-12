defmodule TallerExilir.AdventCodeDay3 do
  import String, only: [split: 3]

  @spec star1(binary) :: number
  def star1(cadena) do
    cadena
    |> split("", trim: true)
    |> Enum.map(fn
      ""  -> [0,0]
      ">" -> [0,1]
      "<" -> [0,-1]
      "^" -> [1,0]
      "v" -> [-1,0]
      end)
    |> Enum.scan(fn
      [x, y], [z, w] -> [x + z, y + w]
    end)
    |> Enum.concat([[0, 0]])
    |>Enum.uniq()
    |>Enum.count()
  end


end
