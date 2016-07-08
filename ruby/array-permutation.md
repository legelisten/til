The `Array#permutation` method returns an iterator to fetch all possible permutations of the given array.

Example:

```ruby
> [1,2,3].permutation
 => #<Enumerator: [1, 2, 3]:permutation>
 ```

 To get all permuations in one go:

 ```ruby
 > [1,2,3].permutation.entries
  => [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
 ```
