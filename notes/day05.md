# Day 05

[Puzzle ↗️](https://adventofcode.com/2024/day/5) |
[Solution](../lib/day05.rb) |
[Spec](../spec/day05_spec.rb) |
[Input](../input/day05.txt)

## Part 1

My gut instinct here was to first sort each update to determine if they were ordered, where the "page ordering rules"
just represent a custom collation - a task I've done _many_ times in my career.

I didn't agonize too much here, an adjacency list made sense to model the collation and the rest was easy.

Monkey patching the Array class to add a `middle` method is not something I'd normally do, but it's convenient here.

## Part 2

Glad I picked sorting as a method to solve part 1, because it made part 2 easy!
