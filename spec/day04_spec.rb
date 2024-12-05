require_relative '../lib/day04'

describe Day04 do
  input = <<~INPUT
    MMMSXXMASM
    MSAMXMSMSA
    AMXSXMAAMM
    MSAMASMSMX
    XMASAMXAMM
    XXAMMXXAMA
    SMSMSASXSS
    SAXAMASAAA
    MAMMMXMMMM
    MXMXAXMASX
  INPUT

  input2 = <<~INPUT
    ....XXMAS.
    .SAMXMS...
    ...S..A...
    ..A.A.MS.X
    XMASAMX.MM
    X.....XA.A
    S.S.S.S.SS
    .A.A.A.A.A
    ..M.M.M.MM
    .X.X.XMASX
  INPUT

  describe ".part1" do
    it "returns the solution to part 1" do
      expect(Day04.part1(input)).to eq(18)
    end
  end

  describe ".part2" do
    it "returns the solution to part 2" do
      expect(Day04.part2(input)).to eq(9)
    end
  end
end
