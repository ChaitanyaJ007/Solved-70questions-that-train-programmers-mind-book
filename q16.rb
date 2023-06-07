MAX = 500

answer = []
(1..MAX/4).each{|c|           # one side of a square
  edge = (1..(c-1)).to_a.map{|tate| tate * (2 * c - tate)}
  edge.combination(2){|a, b|  # area of rectangle
    if a + b == c * c then
      answer.push([1, b / a.to_f, c * c / a.to_f])
    end
  }
}
answer.uniq!                  # Exclude integer multiples
puts answer.size
