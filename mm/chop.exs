defmodule Chop do
  def guess(n, a..b) when n - (div(b - (a - 1), 2) + (a - 1)) > 0 do
    IO.puts "Is it #{middle(a..b)}"
    guess(n, middle(a..b)..b)
  end

  def guess(n, a..b) when n - (div(b - (a - 1), 2) + (a - 1)) < 0 do
    IO.puts "Is it #{middle(a..b)}"
    guess(n, a..middle(a..b))
  end

  def guess(n, a..b) when n - (div(b - (a - 1), 2) + (a - 1)) == 0 do
    IO.puts "Is it #{middle(a..b)}"
    IO.puts "#{middle(a..b)}"
  end

  defp middle(a..b), do: div(b - (a - 1), 2) + (a - 1)
end
