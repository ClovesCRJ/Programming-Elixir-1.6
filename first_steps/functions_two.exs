functions_two = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, a -> a
end

rem_function = fn
  n -> functions_two.(rem(n, 3), rem(n, 5), n)
end

IO.puts rem_function.(10)
IO.puts rem_function.(11)
IO.puts rem_function.(12)
IO.puts rem_function.(13)
IO.puts rem_function.(14)
IO.puts rem_function.(15)
IO.puts rem_function.(16)
