defmodule SupportPairsWeb.PageController do
  use SupportPairsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
