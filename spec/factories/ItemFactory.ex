defmodule Payment.ItemFactory do
  use ExMachina

  def flight_fare_factory, do: %FlightPrice{fare: 15000, fee: 3000, markup: 500, tax: 1500}
end
