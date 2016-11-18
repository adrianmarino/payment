defmodule OtherPrice, do: defstruct [fare: 0, tax: 0, markup: 0]

defimpl Price, for: OtherPrice do
  import Utils.Number
  def net(price), do: price.fare
  def total(price), do: zero_def((net(price) + price.tax) - price.markup)
end
