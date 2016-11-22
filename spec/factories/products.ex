defmodule Payment.ProductFactory do
  use ExMachina

  def flight_with_two_passengers_factory,
    do: %Flight{passengers: [build(:passenger), build(:passenger, full_name: 'Jango Fett')]}

  def passenger_factory,
    do: %Passenger{full_name: 'Obi-Wan Kenobi', price: build(:flight_fare)}

  def flight_fare_factory, do: %FlightPrice{fare: 15000, fee: 3000, markup: 500, tax: 1500}

end
