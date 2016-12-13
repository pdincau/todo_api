defmodule TodoApi.Users.Invite do

  alias TodoApi.User
  alias TodoApi.Repo

  @create_params [:email]

  def call(%{email: email}) do
    with :ok <- validate_email(email) do
      email
      |> build_changeset
      |> create_user
    end
  end

  defp validate_email(email) do
    case String.match?(email, ~r/@/) do
      true -> :ok
      false -> {:error, :invalid_email}
    end
  end

  defp build_changeset(email) do
    params = %{email: email}

    %User{}
    |> Ecto.Changeset.cast(params, @create_params)
    |> Ecto.Changeset.unique_constraint(:email)
  end

  defp create_user(changeset) do
    changeset
    |> Repo.insert
  end

end
