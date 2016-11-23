defmodule Payment.PassengerFactory do
  use ExMachina
  alias Payment.ItemFactory

  def passenger_factory, do: %Passenger{price: ItemFactory.build(:flight_fare)}
  def obi_wan_passenger_factory, do: build(:passenger, full_name: 'Obi-Wan Kenobi')
  def jango_fett_passenger_factory, do: build(:passenger, full_name: 'Jango Fett')
end
