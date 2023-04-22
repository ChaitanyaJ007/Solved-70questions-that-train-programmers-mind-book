def cutbar(m, n, current) # is the current number of bars
    if current >= n then
      0 # condition for finished cutting
    elsif current < m then
      1 + cutbar(m, n, current * 2) # Next time will be double what it is now
    else
      1 + cutbar(m, n, current + m) # Add as many bars
    end
  end
  
  puts cutbar(3, 20, 1)
  puts cutbar(5, 100, 1)