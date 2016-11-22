defmodule RuleEngine do
    import Enum
    import Rule
    def fire_all(rules, ctx), do: rules |> filter(&(apply? &1, ctx))
                                        |> map(&(%{rule: &1, return: fire(&1, ctx)}))
end
