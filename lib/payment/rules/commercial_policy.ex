defimpl Rule, for: Payment.CommercialPolicy do
  import Utils.CodeEvaluator
  def apply?(rule, ctx), do: eval(rule.when, ctx)
  def fire(rule, ctx), do: eval(rule.then, ctx)
end
