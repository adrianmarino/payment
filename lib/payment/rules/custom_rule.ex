defmodule CustomRule, do: defstruct name: 'Unknow', desc: 'Unknow', when: '', then: ''

defimpl Rule, for: CustomRule do
  import Utils.CodeEvaluator
  def apply?(rule, ctx), do: eval(rule.when, ctx)
  def fire(rule, ctx), do: eval(rule.then, ctx)
end
