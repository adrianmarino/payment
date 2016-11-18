defmodule Utils.CodeEvaluator do
  import Code
  def eval(code, ctx), do: elem(eval_string(code, ctx, __ENV__), 0)
end
