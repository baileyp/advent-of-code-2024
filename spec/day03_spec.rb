require_relative '../lib/day03'

describe Day03 do
  input = <<~INPUT
    xmul(2,4)%&mul[3,7]!@^do_not_mul(5,5)+mul(32,64]then(mul(11,8)mul(8,5))
  INPUT

  input2 = <<~INPUT
    xmul(2,4)&mul[3,7]!^don't()_mul(5,5)+mul(32,64](mul(11,8)undo()?mul(8,5))
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day03.part1(input)).to eq(161)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day03.part2(input2)).to eq(48)
    end
  end
end
