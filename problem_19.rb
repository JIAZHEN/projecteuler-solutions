require 'date'
count = 0
(1901..2000).each do |y|
	(1..12).each { |m| count += 1 if Date.new(y, m, 1).sunday? } 
end
puts count