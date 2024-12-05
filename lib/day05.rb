class Day05
  def self.part1(input)
    collation, updates = parse_input(input)

    updates.filter_map do |update|
      update.middle if update == sort_update(collation, update)
    end.sum
  end

  def self.part2(input)
    collation, updates = parse_input(input)

    updates.filter_map do |update|
      sorted = sort_update(collation, update)
      sorted.middle if update != sorted
    end.sum
  end

  def self.parse_input(input)
    page_ordering, updates = input.split("\n\n")
    page_ordering = page_ordering.split("\n").map{ |l| l.split('|').map(&:to_i) }
    updates = updates.split("\n").map{ |l| l.split(',').map(&:to_i) }

    [build_collation(page_ordering), updates]
  end

  def self.sort_update(collation, update)
    update.sort do |a, b|
      case
      when collation[a].nil?
        1
      when collation[b].nil?
        -1
      when collation[a].include?(b)
        -1
      when collation[b].include?(a)
        1
      else
        0
      end
    end
  end

  def self.build_collation(page_ordering)
    adjacency_list = Hash.new { |hash, key| hash[key] = [] }
    page_ordering.each do |order|
      adjacency_list[order[0]] << order[1]
    end
    adjacency_list
  end
end

class Array
  def middle
    self[(length / 2).floor]
  end
end
