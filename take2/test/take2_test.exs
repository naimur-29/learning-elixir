defmodule Take2Test do
  use ExUnit.Case
  doctest Take2

  test "greets the world" do
    assert Take2.hello() == :world
  end
end
