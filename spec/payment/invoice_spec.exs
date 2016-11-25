defmodule Payment.InvoiceSpec do
  use ESpec
  alias Payment.{PaymentMethodFactory, ProductFactory}

  context "when generate invoice for a flight + hotel paid with a creadit card and cash" do
    let credit_card: PaymentMethodFactory.build(:visa_santander)

    let flight: ProductFactory.build(:flight_with_two_passengers)
    let health_insurance: HealthInsurance.create(code: 'assist-card', price: 1000, flight: flight)

    let invoice: described_module.build(for: [flight, health_insurance], to_paid_with: credit_card)

    it "returns a flight invonce detail" do
      expect invoice.items |> to(have_length 0)
    end
  end
end
