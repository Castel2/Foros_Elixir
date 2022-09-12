defmodule TallerExilir.AdventCodeDay2 do
  alias TallerExilir.MyList
  import String, only: [split: 3]

  @spec star1(binary) :: number
  def star1(cadena) do
    cadena
    |> split("\n", trim: true)
    |> Enum.map(fn
      x -> String.split(x, "x")
     end)
    |> Enum.filter(&
     (&1 != [""])
     )
    |>Enum.map(fn
      x -> Enum.map(x, fn
        x -> String.to_integer(x)
        end)
      end)
    |>Enum.map(fn
      x -> calc(x)
    end)
    |>MyList.sum()
  end

  @spec calc([number, ...]) :: number
  def calc([largo,ancho,alto]) do
    areas = [largo*ancho, ancho*alto, largo*alto]
    minimo = Enum.min(areas)
    Enum.sum(areas) * 2 + minimo
  end

  def star2(cadena) do
    cadena
    |> split("\n", trim: true)
    |> Enum.map(fn
      x -> String.split(x, "x")
     end)
    |> Enum.filter(&
     (&1 != [""])
     )
    |>Enum.map(fn
      x -> Enum.map(x, fn
        x -> String.to_integer(x)
        end)
      end)
    |>Enum.map(fn
      x -> calc2(x)
    end)
    |>MyList.sum()
  end

  @spec calc2([...]) :: number
  def calc2([largo,ancho,alto]) do
    [minimo, minimo2, cola] = Enum.sort([largo,ancho,alto])
    arco = minimo * minimo2 * cola
    longitud = minimo * 2 + minimo2 * 2
    arco + longitud
  end

end
