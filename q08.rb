N = 12

def move(log)
  # End after checking N+1 items including the first position
  return 1 if log.size == N + 1

  cnt = 0
  # Move forward/backward/left/right
  [[0, 1], [0, -1], [1, 0], [-1, 0]].each{|d|
    next_pos = [log[-1][0] + d[0], log[-1][1] + d[1]]
    # Move if not explored
    if !log.include?(next_pos) then
      cnt += move(log + [next_pos])
    end
  }
  cnt
end

puts move([[0, 0]])
