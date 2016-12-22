defmodule TodoApi.Sensor do
  use TodoApi.Web, :model

  schema "sensors" do
    field :calibration, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:calibration])
    |> validate_required([:calibration])
  end
end
