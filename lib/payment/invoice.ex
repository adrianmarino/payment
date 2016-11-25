defmodule Payment.Invoice do
  defstruct [items: []]
  import ListUtil, only: [list: 1]

  def build(options \\ []) do
    IO.puts(inspect value(options, :for))
    IO.puts(inspect value(options, :to_paid_with))
    %Payment.Invoice{}
  end

  defp value(options, key), do: list(Keyword.get(options, key, []))
end
