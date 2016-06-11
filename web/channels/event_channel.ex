defmodule Taima.EventChannel do
  use Phoenix.Channel

  def join("event:all", _message, socket) do
    {:ok, socket}
  end
end
