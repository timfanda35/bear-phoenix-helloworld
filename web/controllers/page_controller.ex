defmodule PhoenixHelloworld.PageController do
  use PhoenixHelloworld.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
