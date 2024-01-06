defmodule Take2 do
  use Application

  def start(_type, _args) do
    # CODE:
    Take2.main()

    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do
    num1 = 1
    num2 = 2
    IO.puts "number1 = #{num1}, number2 = #{num2}"

    [num1, num2] = [num2, num1]
    IO.puts "number1 = #{num1}, number2 = #{num2}"

    IO.inspect self()
  end

  def loop(initiator, range, increment) do
    IO.puts(initiator)

    if initiator < range do
      loop(initiator + increment, range, increment)
    end
  end

  def sum_and_avg(numbers) do
    sum = Enum.sum(numbers)
    average = sum / Enum.count(numbers)

    [sum, average]
  end

  def print_numbers(numbers) do
    numbers |> Enum.join(", ") |> IO.puts()
  end
end
