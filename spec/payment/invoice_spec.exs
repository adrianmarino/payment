defmodule InvoiceSpec do
  use ESpec
  import Payment.Factory

  context "when generate invoce for a flight + hotel paid with a creadit card and cash" do
    let credit_card: Payment.Factory.build(:visa_santander_credit_card)
  end
end
