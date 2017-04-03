defmodule MassAppeal.PageController do
  use MassAppeal.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
