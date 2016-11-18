defmodule Item do
  import Enum
  defstruct name: 'Unknow', amount: 0, breakdown: []
  def breakdown(item, name), do: item.breakdown |> find(&(&1.name == name))
end
