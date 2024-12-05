# Day 04

[Puzzle ↗️](https://adventofcode.com/2024/day/4) |
[Solution](../lib/day04.rb) |
[Spec](../spec/day04_spec.rb) |
[Input](../input/day04.txt)

## Part 1

TIL that ruby's array access (via `dig` or `[]`) will _not_return `nil` if the index is out of bounds, which was not
helpful for this puzzle, so I had to add some ugly defensive checks. But, this will almost certainly come in handy later
this year.

Anyway - super ugly code but it works and I got it done quickly.

## Part 2

Same with the "out of bounds" checks but pretty easy puzzle once I put in a check to not match this pattern:

```
M.S
.A.
S.M
```
