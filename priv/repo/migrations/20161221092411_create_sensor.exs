defmodule TodoApi.Repo.Migrations.CreateSensor do
  use Ecto.Migration

  def change do
    create table(:sensors) do
      add :calibration, :string

      timestamps()
    end

  end
end
