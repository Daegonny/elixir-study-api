defmodule BusiApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :emai, :string
      add :encrypted_password, :string

      timestamps()
    end

    create unique_index(:users, [:emai])
  end
end
