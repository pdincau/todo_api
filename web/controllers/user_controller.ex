defmodule TodoApi.UserController do
  use TodoApi.Web, :controller

  alias TodoApi.Users

  def create(conn, params) do
    attrs = %{email: params["email"]}
    {:ok, user} = Users.Invite.call(attrs)

    conn
      |> put_status(:created)
      |> render("show.json", user: user)
  end
end
