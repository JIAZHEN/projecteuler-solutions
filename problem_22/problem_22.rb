# Using names.txt (right click and 'Save Link/Target As...'), 
# a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. 
# Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, 
# which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. 
# So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?
class String
  CHARS = ('a'..'z').to_a

  def alp_value
    self.size != 1 ? 0 : CHARS.index(self) + 1
  end

  def score
    self.downcase.split('').inject(0){|sum,c| sum+c.alp_value}
  end
end

file_path = File.expand_path("problem_22/names.txt")
names = File.read(file_path).delete('"').split(',').sort
puts names.each_with_index.inject(0) {|sum, pairs| sum + pairs[0].score * (pairs[1] + 1)}