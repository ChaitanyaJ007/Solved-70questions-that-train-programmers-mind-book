require 'prime'

primes = Prime.take(6)        # 6 prime numbers that fit a to f
min = primes[-1] * primes[-1] # square of the largest and largest
min_friend = []

primes.permutation{|prime|    # permutation of 6 primes
  # select two and multiply
  friends = prime.each_cons(2).map{|x, y| x * y}
  # Same number of squares at the beginning and end
  friends += [prime[0], prime[-1]].map{|x| x * x}
  if min > friends.max then   # If I update the minimum
    min = friends.max
    min_friend = friends
  end
}

puts min
p min_friend
