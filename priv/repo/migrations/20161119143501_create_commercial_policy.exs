defmodule Payment.Repo.Migrations.CreateCommercialPolicy do
  use Ecto.Migration

  def up do
    create table(:commercial_policies) do
      add :name, :string
      add :description, :string
      add :when, :string
      add :then, :string

      timestamps()
    end
  end

  def down do
    drop table(:commercial_policies)
  end
end
