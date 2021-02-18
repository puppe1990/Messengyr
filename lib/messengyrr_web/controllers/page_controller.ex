defmodule MessengyrrWeb.PageController do
  use MessengyrrWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
