# if it contains an integer part
i = 1
while i += 1
  # remove the decimal point and get the 10 characters from the left
  str = ('%10.10f'%Math.sqrt(i)).sub('.','')[0..9]
  # Remove duplicates and exit if 10 characters
  break if str.split('').uniq.length == 10
end
puts i

# For fractional part only
i = 1
while i += 1
  # Divide by decimal point and get fractional part only
  str = ('%10.10f'%Math.sqrt(i)).split('.')[1]
  # Eliminate the duplicates of the fractional part and end if it is 10 characters
  break if str.split('').uniq.length == 10
end
puts i
