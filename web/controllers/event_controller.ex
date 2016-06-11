defmodule Taima.EventController do
  use Taima.Web, :controller

  def show(conn, %{"id" => id}) do
    Taima.Endpoint.broadcast("event:all", "new_event", %{"id" => id})
    text conn, "New Event"
  end
end
