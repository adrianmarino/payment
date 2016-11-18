defmodule ProductSpec do
  use ESpec

  context "when calculates price of a flight with two passengers" do
    subject %Flight{
      passengers: [
        %Passenger{
          full_name: 'Obi-Wan Kenobi',
          price: %FlightPrice{fare: 15000, fee: 3000, markup: 500, tax: 1500}
        },
        %Passenger{
          full_name: 'Jango Fett',
          price: %FlightPrice{fare: 15000, fee: 3000, markup: 500, tax: 1500}
        }
      ]
    }

    it "has a total price of 38000", do: expect(described_module.total_price subject).to eq 38000
    it "has a net price of 36000", do: expect(described_module.net_price subject).to eq 36000
  end
end
