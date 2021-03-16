defmodule MyList2 do
  def reduce([], value, _), do: value
  def reduce([head | tail], value, func), do: reduce(tail, func.(head, value), func)
end
