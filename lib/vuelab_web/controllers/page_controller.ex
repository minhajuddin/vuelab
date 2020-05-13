defmodule VuelabWeb.PageController do
  use VuelabWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
