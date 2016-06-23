# Write a method that takes two numbers. It should print out all primes
# between two numbers. Do not use Rubys prime class.

# find_primes(3, 10)
# => 3, 5, 7

def is_prime?(number)
  (2..(number - 1)).each do |divisor|
    return false if number % divisor == 0
  end

  true
end

def find_primes(start, stop)
  (start..stop).select do |number|
    # check if number is prime
    # prime is divisible only by 1 and itself
    is_prime?(number)
  end
end

p find_primes(3, 10)
p find_primes(5, 20)
p find_primes(1, 2)
