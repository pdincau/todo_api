defmodule TodoApi.PortsController do
  use TodoApi.Web, :controller

  def index(conn, _params) do
    Complex.start("priv/extprg")
    {:ok, body} = %{} |> Poison.encode
    conn |> resp(201, body)
  end

  ##  def update(conn, %{"calibration_rate" => calibration_rate}) do
    ##  case Complex.update_calibration(calibration_rate) do
        ##{:ok, new_calibration} ->
          ##{:ok, body} = %{"calibration" => new_calibration} |> Poison.encode
          ##{:ok, body} = %{"calibration" => new_value} |> Poison.encode
          ##conn |> resp(200, body)   
        ##{:error, "nasty error here"} ->
          ## conn |> resp(404, body)   
          ##....
        ##end
        ##end
  
  def show(conn, %{"id" => id}) do
    value = Complex.foo(2)
    {:ok, body} = %{"value" => value} |> Poison.encode
    conn |> resp(200, body)
  end

end
