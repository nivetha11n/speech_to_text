defmodule SpeechToTextWeb.PageLive do
  use SpeechToTextWeb, :live_view

  def mount(_param, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    Hello world !!!
    """
    end
end
