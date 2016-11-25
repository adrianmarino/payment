defmodule Payment.PassengerFactory do
  use ExMachina
  alias Payment.ItemFactory

  def default_factory, do: %Passenger{price: ItemFactory.build(:flight_fare)}
  def obi_wan_factory, do: build(:default, full_name: 'Obi-Wan Kenobi')
  def jango_fett_factory, do: build(:default, full_name: 'Jango Fett')
end
