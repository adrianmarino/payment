defmodule Payment.FinancialEntityFactory do
  use ExMachina
  alias Payment.FinancialEntity

  def santander_rio_factory, do: %FinancialEntity{code: 'santander-rio', name: 'Santander Rio'}
end
