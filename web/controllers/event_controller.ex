defmodule Timr.EventController do
  use Timr.Web, :controller

  def create(conn, _params) do
    Timr.Endpoint.broadcast("event:all", "new_event", %{})
    text conn, "New Event"
  end
end
