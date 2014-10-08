# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 
# 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
class Fixnum

  def in_words
    return nil if self == 0
    ONE_WORD[self] || long_words(self)
  end

  private
  ONE_WORD = {
    1  => "one",
    2  => "two",
    3  => "three",
    4  => "four",
    5  => "five",
    6  => "six",
    7  => "seven",
    8  => "eight",
    9  => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety"
  }

  MAGNITUDE_WORD = {
    1000000       => "million",
    1000          => "thousand"
  }

  def long_words(n)
    result = []
    MAGNITUDE_WORD.each do |magnitude, name|
      result << "#{in_thousand(n / magnitude)} #{name}" if n >= magnitude
      n = n % magnitude
    end
    unless n == 0 
      # there's remainder for this Fixnum
      # special cases for numbers like "1001", "1000001"
      result << "and" unless n >= 100 || result.empty? || result.join(' ').include?(' and')
    end
    
    result << in_thousand(n)
    result.join(' ').strip
  end

  def in_thousand(n)
    within_hundred = []
    quotient, remainder = n.divmod(100)
    hundreds = ONE_WORD[quotient] + " hundred" if ONE_WORD[quotient]
    
    if ONE_WORD[remainder]
      within_hundred << ONE_WORD[remainder]
    else
      quotient, remainder = remainder.divmod(10)
      within_hundred << ONE_WORD[quotient * 10]
      within_hundred << ONE_WORD[remainder]
    end
    ([hundreds].compact + [within_hundred.compact.join(' ')]).delete_if(&:empty?).join(' and ')
  end
end

p (1..1000).inject(0) {|sum, n| sum+n.in_words.gsub(/\s/,'').size}