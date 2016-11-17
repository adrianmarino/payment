defmodule Payment.Router do
  use Payment.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Payment do
    pipe_through :api
  end
end
