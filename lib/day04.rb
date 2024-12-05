class Day04
  DIRECTIONS = [-1, 0, 1].product([-1, 0, 1]).reject { |dy, dx| dy == 0 && dx == 0 }
  def self.part1(input)
    grid = input.split("\n").map(&:chars)
    grid.each_with_index.sum do |row, y|
      row.each_with_index.sum do |char, x|
        char == 'X' ? count_xmas(grid, y, x) : 0
      end
    end
  end

  def self.part2(input)
    grid = input.split("\n").map(&:chars)
    grid.each_with_index.sum do |row, y|
      row.each_with_index.sum do |char, x|
        char == 'A' ? count_x_mas(grid, y, x) : 0
      end
    end
  end

  def self.count_xmas(grid, y, x)
    DIRECTIONS.sum { |y_offset, x_offset| dig(grid, y, x, y_offset, x_offset) }
  end

  def self.count_x_mas(grid, y, x)
    if y == 0 || y == grid.size - 1 || x == 0 || x == grid[0].size - 1
      return 0
    end
    x_mas = [
      grid.dig(y - 1, x - 1),
      grid.dig(y - 1, x + 1),
      grid.dig(y + 1, x - 1),
      grid.dig(y + 1, x + 1),
    ]
    return 0 if x_mas.first == x_mas.last
    x_mas.count('M') == 2 && x_mas.count('S') == 2 ? 1 : 0
  end

  def self.dig(grid, y, x, y_offset, x_offset)
    ox = x
    oy = y
    letters = ['X', 'M', 'A', 'S']
    while grid.dig(y, x) == letters[0] && letters.any?
      if y < 0 || y > grid.size || x < 0 || x > grid[0].size
        return 0
      end
      y += y_offset
      x += x_offset
      letters.shift
    end
    letters.empty? ? 1 : 0
  end
end
