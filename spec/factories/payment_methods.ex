defmodule Payment.PaymentMethodFactory do
  use ExMachina
  alias Payment.{Methods.CreditCard, Bank}

  def visa_santander_credit_card_factory do
    %CreditCard{
      code: 'visa-santander',
      desc: 'Visa Santander',
      bank: build(:santander_rio_bank)
    }
  end

  def santander_rio_bank_factory, do: %Bank{code: 'santander-rio', name: 'Santander Rio'}
end
