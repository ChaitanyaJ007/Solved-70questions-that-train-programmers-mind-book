# Load the Date class that handles dates
require 'date'

# Set the extraction target period
term = Date.parse('19641010')..Date.parse('20200724')

# Numericalization
term_list = term.map{|d|d.strftime('%Y%m%d').to_i}

# Output the same value as the processed result
puts term_list.select{|d|d==d.to_s(2).reverse.to_i(2)}
