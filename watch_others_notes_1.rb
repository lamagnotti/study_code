#

def prime(num)
  return false if num == 1

  (2..(num - 1)).each do |i|
    return false if num % i == 0
  end
  true
end

# Write a method that will take an array of numbers, and only return those that are prime.

def select_prime(arr)
  arr.select { |value| prime?(value) }
end

p select_prime([1, 2, 3, 4]) #=> [2, 3]
p select_prime([4, 6, 8, 10]) #=> []

# p calls inspect, which will give us a better output
# puts calls to_s on each array element
# puts [] doesn't output anything
# in Ruby, every conditional returns a value

# Write a method that will take an array of numbers, and return the number of primes in the array.

def count_primes(arr)
  arr.count { |value| prime?(value)}
end

p count_primes([1, 2, 3, 4]) #=> 2
p count_primes([4, 6, 8, 10]) #=> 0
