defmodule Timr.EventController do
  use Timr.Web, :controller

  def show(conn, %{"id" => id}) do
    Timr.Endpoint.broadcast("event:all", "new_event", %{"id" => id})
    text conn, "New Event"
  end
end
