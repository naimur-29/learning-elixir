defmodule Take2 do
  use Application
  alias UUID

  #CONSTANT VARIABLES:
  # @pie 3.14

  def start _type, _args do
    #CODE:
    Take2.main

    Supervisor.start_link [], strategy: :one_for_one
  end

  def main do
    #LOOPS:
    # limit = 10
    # start = 0
    # loop start, limit

    # constant variables:
    # IO.puts @pie

    #ATOMS:
    # name = :"Naimur Rahman"
    # # status = :gold
    # status = Enum.random [:gold, :silver, :bronze]

    # # if status === :gold do
    # #   IO.puts "#{name}, your status is #{status}"
    # # else
    # #   IO.puts "Get lost, #{name}"
    # # end

    # case status do
    #   :gold -> IO.puts "#{name}, your status is #{status}"
    #   :silver -> IO.puts "#{name}, your  status is #{status}"
    #   _ -> IO.puts "Get lost!"
    # end

    #STRINGS:

  end

  #LOOPS:
  def loop start, limit do
    IO.puts start

    if start < limit do
      loop start + 1, limit
    end
  end
end
