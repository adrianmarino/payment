defmodule NormalPrice, do: defstruct [amount: 0]

defimpl Price, for: NormalPrice do
  def net(price), do: price.amount
  def total(price), do: price.amount
end
