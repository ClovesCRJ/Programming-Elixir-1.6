defmodule Exercise1 do
  def mapsum([], _), do: 0
  def mapsum([head | tail], func), do: func.(head) + mapsum(tail, func)

  def max([head | []]), do: head
  def max([head | [head2 | tail]]) when head >= head2 do
    max([head | tail])
  end
  def max([head | [head2 | tail]]) when head < head2 do
    max([head2 | tail])
  end

  def caesar([], _), do: []
  def caesar([head | tail], n) when head + n <= 122 do
    [head + n | caesar(tail, n)]
  end
  def caesar([head | tail], n) when head + n > 122 do
    [(head + n - 122) + 96 | caesar(tail, n)]
  end
end
