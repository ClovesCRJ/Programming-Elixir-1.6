defmodule Exercise2 do
  def span(from, to) when from == to do
    [ from ]
  end
  def span(from, to) do
    [ from | span(from+1, to) ]
  end
end
