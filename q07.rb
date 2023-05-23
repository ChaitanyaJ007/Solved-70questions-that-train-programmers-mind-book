# Load the Date class that handles dates
require 'date'

# Set the extraction target period
term = Date.parse('19641010')..Date.parse('20200724')

# Numericalization
term_list = term.map{|d|d.strftime('%Y%m%d').to_i}

# Output the same value as the processed result
puts term_list.select{|d|d==d.to_s(2).reverse.to_i(2)}

# Question 7 Part 2
# Load the Date class that handles dates
require 'date'

# Extract 8 characters from the 5th binary number in the period of interest
from_left = 19641010.to_s(2)[4,8].to_i(2)
to_left   = 20200724.to_s(2)[4,8].to_i(2)
# Loop left and right 8 characters
from_left.upto(to_left){|i|
  l = "%08b" % i   # left side
  r = l.reverse    # right side
  (0..1).each{|m|  # center
    value = "1001#{l}#{m}#{r}1001"
    begin
      puts Date.parse(value.to_i(2).to_s).strftime('%Y%m%d')
      rescue       # ignore non-valid dates
    end
  }
}