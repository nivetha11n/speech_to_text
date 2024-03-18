defmodule SpeechToTextWeb.PageLive do
  use SpeechToTextWeb, :live_view
  import Phoenix.HTML

  def mount(_params, _session, socket) do
    {:ok, assign(socket, last_input: "")}
  end


  def render(assigns) do
    ~H"""
    <h1>Input Form</h1>
    <form phx-submit="handle_submit">
      <input type="text" name="user_input" placeholder="Enter some text" />
      <button type="submit">Submit</button>
    </form>


    <p>Last input: <%= @last_input %></p>
    """
  end

  def handle_event("handle_submit", %{"user_input" => user_input}, socket) do
    # Handle the input value here. For now, let's just log it.
    IO.inspect(user_input, label: "User Input")

    # No changes to the socket, so we just return :noreply
    {:noreply, assign(socket, last_input: user_input)}
  end

end
