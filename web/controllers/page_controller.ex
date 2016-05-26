defmodule Timr.PageController do
  use Timr.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
