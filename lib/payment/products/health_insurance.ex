defmodule HealthInsurance do
    defstruct [:id, :code, :start_time, :end_time, :persons_count, :price]

    def create(id, code, person_price, flight) do
      persons_count = length(flight.passengers)
      %HealthInsurance{
        id: id,
        code: code,
        start_time: flight.departure,
        end_time: flight.return,
        persons_count: persons_count,
        price: %NormalPrice{amount: persons_count * person_price}
      }
    end
end
