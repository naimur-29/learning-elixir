defmodule Take2 do
  use Application

  def start(_type, _args) do
    #CODE:
    Take2.main()

    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main() do
    correct = :rand.uniform(1001) - 1

    guessing_game(correct)
  end

  def guessing_game(correct) do
    guess = IO.gets("Guess a number between 0 and 1000: ") |> String.trim() |> String.to_integer()

    if guess < correct do
      IO.puts("#{guess} is smaller!")
    end
    if guess > correct do
      IO.puts("#{guess} is greater!")
    end
    if guess === correct do
      IO.puts("#{guess} is correct!\nYOU WIN!")
    end

    #RECALL:
    if guess !== correct do
      guessing_game(correct)
    end
  end
end
