defmodule Todo.UserController do
  use Todo.Web, :controller
  alias Todo.User

  def index(conn, _params) do
    users = Repo.all(User)
    render(conn, "index.html", users: users)
  end
end
