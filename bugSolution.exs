```elixir
# Solution 1: Using Enum.reduce
list = [1, 2, 3, 4, 5]

list = Enum.reduce(list, [], fn x, acc -> 
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
 |> Enum.reverse()

IO.inspect(list)

#Solution 2: Using Enum.filter
list2 = [1,2,3,4,5]
newList = Enum.filter(list2, fn x -> x != 3 end)
IO.inspect(newList)
```