defmodule TodoApi.Users.InviteTest do
  use TodoApi.ModelCase

  alias TodoApi.Users.Invite
  alias TodoApi.User

  test "it creates a user" do
    {:ok, user} = Invite.call(%{email: "alice@example.com"})

    assert user.id > 0
    assert user.email == "alice@example.com"

    assert (from u in User, select: count(u.id)) |> Repo.one == 1
  end

  test "it handles invalid email" do
    {:error, :invalid_email} = Invite.call(%{email: "Alice and Bob"})
  end
end
