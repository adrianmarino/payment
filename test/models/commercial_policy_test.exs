defmodule Payment.CommercialPolicyTest do
  use Payment.ModelCase

  alias Payment.CommercialPolicy

  @valid_attrs %{action: "some content", condition: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = CommercialPolicy.changeset(%CommercialPolicy{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = CommercialPolicy.changeset(%CommercialPolicy{}, @invalid_attrs)
    refute changeset.valid?
  end
end
