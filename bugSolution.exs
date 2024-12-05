```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:stop_processing)
    end
    IO.puts(x)
  end)
rescue
  :stop_processing ->
    IO.puts("Processing stopped at 3")
end
```