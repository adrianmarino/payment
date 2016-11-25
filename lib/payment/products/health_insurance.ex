defmodule HealthInsurance do
    defstruct [:id, :code, :start, :end, :quantity, :price]

    def create(options \\ []) do
      code      = Keyword.get(options, :code, "unknow")
      flight    = Keyword.get(options, :flight, %Flight{})
      quantity  = length(flight.passengers)
      price     = %NormalPrice{amount: quantity * Keyword.get(options, :price, 0)}

      %HealthInsurance{code: code, quantity: quantity, start: flight.departure, end: flight.return,
        price: price}
    end
end
