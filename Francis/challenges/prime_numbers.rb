require 'set'

def sieve_of_eratosthenes(max)
  primes = Set.new
  numbers = []
  current = 2
  stop = Math.sqrt(max).to_i
  while current < stop
    if numbers[current].nil?
      primes << current
      index = current * current
      while index <= max
        numbers[index] = false
        index += current
      end
    end
    current += 1
  end
  (stop...max).each { |num| primes << num if numbers[num].nil? }
  primes
end

$primes = sieve_of_eratosthenes(10000)

def number_of_primes(arr)
  # write your code here
  arr.reduce(0) { |accm, num| $primes.include?(num) ? accm + 1 : accm }
end

puts number_of_primes([2, 3, 5, 6, 9])
# => 3

puts number_of_primes([121, 17, 21, 29, 11, 341, 407, 19, 119, 352])
# => 4

puts number_of_primes([7, 6, 7, 3, 77, 14, 28, 35, 42])
# => 3
