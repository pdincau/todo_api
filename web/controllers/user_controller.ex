defmodule TodoApi.UserController do
  use TodoApi.Web, :controller

  alias TodoApi.Users

  def create(conn, params) do
    attrs = %{email: params["email"]}

    case Users.Invite.call(attrs) do
      {:ok, user} ->
        conn
          |> put_status(:created)
          |> render("show.json", user: user)
      {:error, :invalid_email} ->
        {:ok, body} = %{"message" => "email is invalid"} |> Poison.encode
        conn
          |> put_resp_header("content-type", "application/json")
          |> resp(400, body)
    end

  end
end
