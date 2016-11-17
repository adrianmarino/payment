#require phoenix_helper.exs
Code.require_file("spec/phoenix_helper.exs")

ESpec.configure fn(config) ->
  config.before fn(_tags) ->
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Payment.Repo)
  end

  config.finally fn(_shared) ->
    Ecto.Adapters.SQL.Sandbox.checkin(Payment.Repo, [])
  end
end
