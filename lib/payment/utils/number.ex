defmodule Utils.Number do
  def default(nil, default), do: default
  def default(value, default) when value < 0, do: default
  def default(value, _), do: value

  def zero_def(value), do: default(value, 0)
end
