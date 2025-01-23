# Modifying a List During Enum.each Iteration in Elixir

This example demonstrates a common pitfall in Elixir when attempting to modify a list while iterating using `Enum.each`.  The code intends to remove the element `3` from the list, but due to Elixir's immutability, the `List.delete` function creates a new list, leaving the original list unchanged within the `Enum.each` loop. This leads to unexpected output where the element 3 is still present in the final list.

The solution showcases the use of `Enum.reduce` or `Enum.filter` for the correct list manipulation.