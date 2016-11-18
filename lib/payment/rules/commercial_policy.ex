defmodule CommercialPolicy, do: defstruct name: 'Unknow', desc: 'Unknow', when: '', then: ''

defimpl Rule, for: CommercialPolicy do
  import Utils.CodeEvaluator
  def apply?(rule, ctx), do: eval(rule.when, ctx)
  def fire(rule, ctx), do: eval(rule.then, ctx)
end
