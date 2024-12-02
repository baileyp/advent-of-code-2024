require_relative '../lib/day02'

describe Day02 do
  input = <<~INPUT
    7 6 4 2 1
    1 2 7 8 9
    9 7 6 2 1
    1 3 2 4 5
    8 6 4 4 1
    1 3 6 7 9
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day02.part1(input)).to eq(2)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day02.part2(input)).to eq(4)
    end
  end
end
