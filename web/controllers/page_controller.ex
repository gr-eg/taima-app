defmodule Taima.PageController do
  use Taima.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
