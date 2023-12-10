defmodule Take2 do
  use Application
  alias UUID

  def start(_type, _args) do
    #code:
    Take2.main()

    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do
    IO.puts(hello())
  end

  def hello do
    UUID.uuid4()
  end
end
