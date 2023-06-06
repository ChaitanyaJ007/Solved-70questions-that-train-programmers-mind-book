N = 10      # steps of stairs
STEPS = 4   # number of steps to advance

def move(a, b)
  return 0 if a > b    # End when Mr. A is higher than Mr. B
  return 1 if a == b   # Count if you stop on the same step
  cnt = 0
  (1..STEPS).each{|da|
    (1..STEPS).each{|db|
      cnt += move(a + da, b - db) # search recursively
    }
  }
  cnt
end

# Person A starts from position 0, Person B from position N
puts move(0, N)
