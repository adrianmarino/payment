defprotocol Rule do
  def apply?(rule, ctx)
  def fire(rule, ctx)
end
