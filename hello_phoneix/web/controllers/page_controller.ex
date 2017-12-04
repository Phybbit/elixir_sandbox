defmodule HelloPhoneix.PageController do
  use HelloPhoneix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
