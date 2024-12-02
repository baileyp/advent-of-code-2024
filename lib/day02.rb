class Day02
  def self.part1(input)
    reports = input.each_line.map { |line| line.split.map(&:to_i) }

    reports.count { |report| safe?(report) }
  end

  def self.part2(input)
    reports = input.each_line.map { |line| line.split.map(&:to_i) }

    reports.count { |report| dampener_safe?(report) }
  end

  def self.safe?(report)
    diff_check = report.each_cons(2).all? { |a, b| (a - b).abs.between?(1, 3) }
    if diff_check
      report.each_cons(2).all? { |a, b| a <= b } || report.each_cons(2).all? { |a, b| a >= b }
    else
      false
    end
  end

  def self.dampener_safe?(report)
    # Remove each number one at a time and check if the report is still safe.
    report.each_with_index do |num, i|
      new_report = report[0...i] + report[i+1..-1]
      return true if safe?(new_report)
    end
    return safe?(report)
  end
end
