defmodule Take2 do
  use Application

  def start(_type, _args) do
    # CODE:
    Take2.main()

    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do
    num =
      IO.gets("Enter numbers: ")
      |> String.trim()
      |> String.split(" ")
      |> Enum.map(&String.to_integer/1)

    IO.inspect(num)
    print_numbers(num)
    IO.inspect(sum_and_avg(num))
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
