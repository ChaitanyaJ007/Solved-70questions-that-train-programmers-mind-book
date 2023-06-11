def check(n, pre, log, square)
    if n == log.size then
      # When all set
      if square.include?(1 + pre) then
        # If the sum of 1 and the previous number is a square number
        puts n
        p log
        return true # Stop if even one is found
      end
    else
      ((1..n).to_a - log).each{|i| # Loop with unused numbers
        if square.include?(pre + i) then
          # If the sum with the previous number is a square number
          return true if check(n, i, log + [i], square)
        end
      }
    end
    false
  end
  
  n = 2
  while true do
    # Pre-calculate squares (up to twice n)
    square = (2..Math.sqrt(n * 2).floor).map{|i| i ** 2}
    break if check(n, 1, [1], square)
    n += 1
  end
  