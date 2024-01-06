defmodule TestPhoenixSql3Web.PageController do
  use TestPhoenixSql3Web, :controller

  def home(conn, _params) do
    render(conn, :home, layout: false)
  end

  def todos(conn, _params) do
    IO.puts("Todos Controller function hit!")
    todos = [
      %{note: "Do a 100 pushups!", status: "due"},
      %{note: "Do a 50 pullups!", status: "done"},
    ]
    json(conn, %{todos: todos})
  end
end
