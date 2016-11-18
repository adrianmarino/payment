defmodule FlightPrice, do: defstruct [fare: 0, fee: 0, tax: 0, markup: 0]

defimpl Price, for: FlightPrice do
  import Utils.Number
  def net(price), do: zero_def((price.fare + price.fee))
  def total(price), do: zero_def((net(price) + price.tax) - price.markup)
end
