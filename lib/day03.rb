class Day03
  def self.part1(input)
    multiplications = input.scan(/mul\((\d{1,3}),(\d{1,3})\)/).map { |a, b| a.to_i * b.to_i }
    multiplications.sum
  end

  def self.part2(input)
    total = 0
    pattern = /mul\(\d{1,3},\d{1,3}\)|don't\(\)|do\(\)/
    matches = input.scan(pattern)
    is_enabled = true

    matches.each do |match|
      if match.include?('do')
        is_enabled = match == 'do()'
        next
      end
      if is_enabled && match.start_with?('mul')
        nums = match.scan(/\d+/).map(&:to_i)
        total += nums[0] * nums[1]
      end
    end
    total
  end
end
