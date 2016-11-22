defmodule ItemSpec do
  use ESpec

  context "when creates an item" do
    subject %Item{
              name: 'fare',
              amount: 100,
              breakdown: [
                %BreakdownItem{name: :financial_cost, amount: 50},
                %BreakdownItem{name: :operating_cost, amount: 20}
              ]
            }

    it "has fare as name", do: expect(subject.name).to(eq 'fare')
    it "has an amount of 100", do: expect(subject.amount).to(eq 100)
    it "have two breakdown items", do: expect(length(subject.breakdown)).to(eq 2)

    it "has a financial cost breakdown" do
      expect subject.breakdown |> to(have_any &(&1.name == :financial_cost))
    end

    it "has an operating cost breakdown" do
      expect subject.breakdown |> to(have_any&(&1.name == :operating_cost))
    end

    it "has a financial cost breakdown with an amount of 50" do
      expect(described_module.breakdown(subject, :financial_cost).amount).to(eq 50)
    end

    it "has an operating cost breakdown with an amount of 20" do
      expect(described_module.breakdown(subject, :operating_cost).amount).to(eq 20)
    end
  end
end
