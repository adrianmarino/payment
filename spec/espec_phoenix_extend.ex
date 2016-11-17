defmodule ESpec.Phoenix.Extend do
  def model do
    quote do
      alias Payment.Repo
    end
  end

  def controller do
    quote do
      alias Payment
      import Payment.Router.Helpers

      @endpoint Payment.Endpoint
    end
  end

  def view do
    quote do
      import Payment.Router.Helpers
    end
  end

  def channel do
    quote do
      alias Payment.Repo

      @endpoint Payment.Endpoint
    end
  end

  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
