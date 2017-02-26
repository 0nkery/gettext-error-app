defmodule GettextErrorApp.PageController do
  use GettextErrorApp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
