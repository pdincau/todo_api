defmodule TodoApi.UserController do
  use TodoApi.Web, :controller

  alias TodoApi.Users

  def create(conn, params) do
    attrs = %{email: params["email"]}
    {:ok, user} = Users.Invite.call(attrs)

    {:ok, body} = %{"data" => %{id: user.id, email: user.email}} |> Poison.encode

    conn
      |> put_status(:created)
      |> render("show.json", user: user)
  end
end
