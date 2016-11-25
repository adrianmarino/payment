defmodule ListUtil do
  def list(values) when values == nil, do: []
  def list(values) when is_list(values), do: values
  def list(value) when is_list(value) == false, do: [value]
end
