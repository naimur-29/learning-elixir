defmodule Take2 do
  use Application
  alias UUID

  #CONSTANT VARIABLES:
  # @pie 3.14

  def start _type, _args do
    #CODE:
    Take2.main()

    Supervisor.start_link [], strategy: :one_for_one
  end

  def main() do
    #LOOPS:
    # limit = 10
    # start = 0
    # loop(start, limit)

    # constant variables:
    # IO.puts(@pie)

    #ATOMS:
    # name = :"Naimur Rahman"
    # # status = :gold
    # status = Enum.random([:gold, :silver, :bronze])

    # # if status === :gold do
    # #   IO.puts("#{name}, your status is #{status}")
    # # else
    # #   IO.puts("Get lost, #{name}")
    # # end

    # case status do
    #   :gold -> IO.puts("#{name}, your status is #{status}")
    #   :silver -> IO.puts("#{name}, your  status is #{status}")
    #   _ -> IO.puts("Get lost!")
    # end

    #STRINGS:
    # IO.puts("a = #{?a}\nb = #{?b}")

    #NUMBERS:
    # :io.format("~.20f\n", [0.1])

    # num1 = 3.14

    # IO.puts("ceil value: ")
    # IO.puts(Float.ceil num1)
    # IO.puts("floor value: ")
    # IO.puts(Float.floor num1)

    # IO.puts(Integer.gcd(20, 10))

    #DATE AND TIMES:
    # time = Time.new!(16, 4, 0, 0)
    # date = Date.new!(2048, 1, 1)
    # date_time = DateTime.new!(date, time, "Etc/UTC")

    # IO.inspect(time)
    # IO.inspect(date)
    # IO.inspect(date_time)
    # IO.inspect(date_time.year)

    # target_date = DateTime.new!(Date.new!(2024, 1, 1), Time.new!(0, 0, 0, 0), "Etc/UTC")
    # # IO.inspect(target_date)

    # time_till = DateTime.diff(target_date, DateTime.utc_now())
    # # IO.puts(time_till)

    # days = div(time_till, 86_400)
    # hours = div(rem(time_till, 86_400), 3_600)
    # minutes = div(rem(time_till, 3_600), 60)
    # seconds = rem(time_till, 60)

    # str = "#{days} days, #{hours} hours, #{minutes} minutes and #{seconds} seconds"
    # IO.puts str

    #TUPLES:
    # memberships = {:diamond, :gold}
    # memberships = Tuple.append(memberships, :silver)
    # IO.inspect memberships

    # IO.puts("The available memberships are #{elem(memberships, 0)}, #{elem(memberships, 1)}, #{elem(memberships, 2)}");

    # numbers = {12, 10, 16}
    # avg = Float.round(Tuple.sum(numbers) / tuple_size(numbers))
    # IO.puts avg

    # user = {"User A", 10}
    # {name, score} = user
    # IO.inspect user
    # IO.puts("name: #{name}, score: #{score}")

    #LISTS and LOOPS:
    # users = [
    #   {"User A", :gold},
    #   {"User B", :gold},
    #   {"User C", :silver}
    # ]

    # Enum.each(users,
    #   fn({name, status}) ->
    #     IO.puts("#{name} has a #{status} status!")
    #   end
    # );

    #MAPS:
    memberships = %{
      diamond: 10,
      gold: 7,
      silver: 5,
      "10": 10
    }
    IO.inspect memberships
    IO.puts memberships."10"
    IO.puts memberships[:"10"]
  end

  #LOOPS:
  def loop(start, limit) do
    IO.puts start

    if start < limit do
      loop(start + 1, limit)
    end
  end
end
