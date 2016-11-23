defmodule Payment.InvoiceSpec do
  use ESpec
  alias Payment.{PaymentMethodFactory, ProductFactory}

  context "when generate invoice for a flight + hotel paid with a creadit card and cash" do
    let credit_card: PaymentMethodFactory.build(:visa_santander)
    let flight: ProductFactory.build(:flight_with_two_passengers)
    let health_insurance: ProductFactory.build(:health_insurance, flight)
    let products: [flight, health_insurance]
    let invoice: described_module.build(credit_card, products)

    xit "returns a flight inconce detail" do end
  end
end
