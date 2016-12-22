defmodule TodoApi.PortsController do
  use TodoApi.Web, :controller

  def index(conn, _params) do
    Complex.start("priv/extprg")
    {:ok, body} = %{} |> Poison.encode
    conn |> resp(201, body)
  end
  
  def show(conn, %{"id" => id}) do
    value = Complex.foo(2)
    {:ok, body} = %{"value" => value} |> Poison.encode
    conn |> resp(200, body)
  end

end
