# Initializing card
N = 100
cards = Array.new(N, false)

# Flip over from 2 to N
(2..N).each{|i|
  j = i - 1
  while (j < cards.size) do
    cards[j] = !cards[j]
    j += i
  end
}

# Output face down card
N.times{|i|
  puts i + 1 if !cards[i]
}
