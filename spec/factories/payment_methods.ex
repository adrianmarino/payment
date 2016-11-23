defmodule Payment.PaymentMethodFactory do
  use ExMachina
  alias Payment.Methods.CreditCard
  alias Payment.FinancialEntityFactory

  def visa_santander_factory do
    %CreditCard{
      code: 'visa-santander',
      bin: '123456789',
      bank: FinancialEntityFactory.build(:santander_rio)
    }
  end
end
