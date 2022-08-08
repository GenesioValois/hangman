defmodule LiveClientWeb.Live.Game.Figure do
  use LiveClientWeb, :live_component

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div>
        FIGURE!
      </div>
    """
  end
end
