defmodule Utils.Enums do
  import Enum
  def map_sum(list, func), do: list |> map(func) |> reduce(&(&1+&2))
end
