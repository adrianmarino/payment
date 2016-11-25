defmodule Payment.ProductFactory do
  use ExMachina
  alias Payment.PassengerFactory
  import Timex

  def flight_with_two_passengers_factory do
    %Flight{
      id: sequence(""),
      departure: shift(today, days: 10),
      return: shift(today, days: 20),
      passengers: [PassengerFactory.build(:obi_wan), PassengerFactory.build(:jango_fett)]
    }
  end
end
