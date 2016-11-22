defmodule ProductSpec do
  use ESpec
  import Payment.Factory

  context "when calculates price of a flight with two passengers" do
    subject build(:flight_with_two_passengers)

    it "has a total price of 38000", do: expect(described_module.total_price subject).to eq 38000
    it "has a net price of 36000", do: expect(described_module.net_price subject).to eq 36000
  end
end
