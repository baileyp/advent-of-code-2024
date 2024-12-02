require_relative '../lib/day01'

describe Day01 do
  input = <<~INPUT
    3   4
    4   3
    2   5
    1   3
    3   9
    3   3
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day01.part1(input)).to eq(11)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day01.part2(input)).to eq(31)
    end
  end
end
