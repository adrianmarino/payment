defmodule Payment.CommercialPolicy do
  use Payment.Web, :model

  schema "commercial_policies" do
    field :name, :string
    field :description, :string
    field :when, :string
    field :then, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :description, :when, :then])
    |> validate_required([:name, :description, :when, :then])
  end
end
