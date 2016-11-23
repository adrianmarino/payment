defmodule Passenger, do: defstruct [:full_name, :price]

defmodule Flight, do: defstruct [:id , passengers: []]

defimpl Product, for: Flight do
  import Utils.Enums
  import Price
  def total_price(product), do: map_sum product.passengers, &(total &1.price)
  def net_price(product), do: map_sum product.passengers, &(net &1.price)
end
