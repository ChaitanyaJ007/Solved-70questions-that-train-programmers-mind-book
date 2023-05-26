a = b = 1
count = 0
while (count < 11) do
  c = a + b
  # Get the sum of each digit by dividing it into 1 digits
  sum = 0
  c.to_s.split(//).each {|e| sum += e.to_i}
  if (c % sum == 0) then
    # Output when it is divisible
    puts c
    count += 1
  end
  a, b = b, c
end