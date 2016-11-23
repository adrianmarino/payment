defmodule Payment.ProductFactory do
  use ExMachina
  alias Payment.PassengerFactory

  def flight_with_two_passengers_factory do
    %Flight{
      id: sequence("product_id"),
      passengers: [
        PassengerFactory.build(:obi_wan_passenger),
        PassengerFactory.build(:jango_fett_passenger)
      ]
    }
  end

  def health_insurance_factory(flight) do
    HealthInsurance.create(
      sequence("product_id"),
      'assist-card',
      1000,
      flight
    )
  end
end
