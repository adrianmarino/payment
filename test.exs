import Ecto.Query;
import Payment.Repo
alias Payment.CommercialPolicy, as: CP

IO.puts "Count: #{one(from c in CP, select: count c.id)}."
