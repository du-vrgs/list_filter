defmodule ListFilter do

  def call(list), do: filter(list)

  defp filter(list) do

    only_digits = Enum.filter(list, fn elem -> String.match?(elem, ~r/^[[:digit:]]+$/) end)
    odds_count = Enum.count(only_digits, fn elem -> rem(String.to_integer(elem), 2) !== 0 end)

    odds_count
  end

end
