# bin/run.rb

require_relative '../lib/my_cli'

# Dynamically require all day modules
(1..25).each do |day|
  begin
    require_relative "../lib/day#{day.to_s.rjust(2, '0')}"
  rescue LoadError
    # Silently ignore the error if the file/module doesn't exist
  end
end

day = ARGV[0].to_i
part = ARGV[1].to_i

if day.between?(1, 25) && part.between?(1, 2)
  MyCli.run(day, part)
else
  puts "Invalid arguments. Day must be between 1 and 25, part must be between 1 and 2."
end