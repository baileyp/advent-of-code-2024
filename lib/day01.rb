class Day01
  def self.part1(input)
    numbers = input.each_line.map { |line| line.split.map(&:to_i) }
    lefts = numbers.map(&:first).sort
    rights = numbers.map(&:last).sort

    lefts.zip(rights).sum { |l, r| (l - r).abs }
  end

  def self.part2(input)
    numbers = input.each_line.map { |line| line.split.map(&:to_i) }
    lefts = numbers.map(&:first)
    rights = numbers.map(&:last)

    lefts.sum { |left| rights.count { |right| right == left } * left}
  end
end
