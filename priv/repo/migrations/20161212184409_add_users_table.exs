defmodule TodoApi.Repo.Migrations.AddUsersTable do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string

      timestamps
    end

    create index(:users, [:email])
  end
end
