defmodule TodoApi.SensorView do
  use TodoApi.Web, :view

  def render("index.json", %{sensors: sensors}) do
    %{data: render_many(sensors, TodoApi.SensorView, "sensor.json")}
  end

  def render("show.json", %{sensor: sensor}) do
    %{data: render_one(sensor, TodoApi.SensorView, "sensor.json")}
  end

  def render("sensor.json", %{sensor: sensor}) do
    %{id: sensor.id,
      calibration: sensor.calibration}
  end
end
