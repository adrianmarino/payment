defmodule Payment.CommercialPolicySpec do
  use ESpec.Phoenix, model: Payment.CommercialPolicy, async: true
  alias Payment.CommercialPolicy

  @valid_attrs %{name: "some content", description: "some content",
                 when: "some content", then: "some content"}
  @invalid_attrs %{}

  context "validation" do
    it "checks changeset with valid attributes" do
      changeset = CommercialPolicy.changeset(%CommercialPolicy{}, @valid_attrs)
      assert changeset.valid?
    end

    it "checks changeset with long username" do
      changeset = CommercialPolicy.changeset(%CommercialPolicy{}, @invalid_attrs)
      refute changeset.valid?
    end
  end
end
