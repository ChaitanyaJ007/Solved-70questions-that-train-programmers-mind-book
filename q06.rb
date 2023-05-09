# Check if it's looping or not
def is_loop(n)
    # First multiply by 3 and add 1
    check = n * 3 + 1
    # Repeat the loop changing the number until it reaches 1
    while check != 1 do
      check = check.even? ? check / 2 : check * 3 + 1
      return true if check == n
    end
    return false
  end
  
  # Check for even numbers, from 2 to 10000
  puts 2.step(10000, 2).count{|i|
    is_loop(i)
  }
  