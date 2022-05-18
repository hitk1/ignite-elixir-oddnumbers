defmodule Oddnumbers do
  require Integer

  def call(list) do
    list
    |> filterNumbers
    |> countOdds
  end

  defp filterNumbers(list) do
    Enum.flat_map(list, fn item ->
      [getIntegerValue(item)]
    end)
  end

  defp countOdds(list) do
    Enum.reduce(list, fn item, acc ->
      if(Integer.is_odd(item)) do
        acc + 1
      else
        acc
      end
    end)
  end

  defp getIntegerValue(value) when is_integer(value), do: value

  defp getIntegerValue(value) do
    case Integer.parse(value) do
      {integerValue, _rest} -> integerValue
      :error -> 0
    end
  end
end
