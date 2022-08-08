defmodule LiveClientWeb.Live.Game.WordSoFar do
  use LiveClientWeb, :live_component

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div>
        WORDS!!
      </div>
    """
  end
end
