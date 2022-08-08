defmodule LiveClientWeb.Live.Game.Alphabet do
  use LiveClientWeb, :live_component

  def mount(socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <div>
        Alphabet!
      </div>
    """
  end
end
