defmodule PentoWeb.Pento.Point do
  use Phoenix.Component
  alias PentoWeb.Pento.Point
  @width 10

def draw(assigns) do
  ~H"""
    <use xlink:href="#point"
      x={ convert(@x) }
      y={ convert(@y) }
      fill={ @fill }
      phx-click="pick"
      phx-value-name={ @name }
      phx-target="#game" />
  """
end

  defp convert(i) do
    (i-1) * @width + 2 * @width
  end
end

