defmodule TodoApi.UserController.InviteTest do
  use TodoApi.ConnCase

  test "inviting a user responds with the new user" do
    response = build_conn
               |> post(user_path(build_conn, :create, email: "alice@example.com"))
               |> json_response(201)

    # not working because of id
    #expected = %{"data" => %{"email" => "alice@example.com"}}

    assert response == expected
  end

  test "another way to test" do
    conn =
      build_conn
      |> post(user_path(build_conn, :create, email: "alice@example.com"))

    body = conn |> response(201) |> Poison.decode!

    assert body["data"]["id"] |> is_integer
    assert body["data"]["id"] > 0
    assert body["data"]["email"] == "alice@example.com"
  end


  test "yet another way to test" do
    conn =
      build_conn
      |> post(user_path(build_conn, :create, email: "alice@example.com"))

      response = json_response(conn, 201) # già una expectation

      assert response["data"]["id"] |> is_integer
      assert response["data"]["id"] > 0
      assert response["data"]["email"] == "alice@example.com"
  end
end

