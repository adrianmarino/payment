defmodule RuleEngineSpec do
  use ESpec
  import List

  describe "#fire_all" do
    context "when fire two custom rules and match one" do
      let ctx: 2
      let rules: [%CustomRule{ when: 'ctx > 1', then: 1 }, %CustomRule{ when: 'ctx == 1', then: 2 }]
      let results: described_module.fire_all rules, ctx: ctx

      it "returns one result", do: expect results |> to(have_length 1)
      it "returns a 1 value", do: expect first(results).return |> to(eq 1)
    end
  end
end
