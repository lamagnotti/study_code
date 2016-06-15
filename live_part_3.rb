# Notes taken on Live Session: Beginning Ruby Part 2

---------------------------------

# Variables are pointers to objects
# Variables are ALWAYS pointing to an object
# Even though everything is an object, this is just a beginner POV
# puts returns nil

a = 'hi'  # a is pointing to a new object
b = a     # b is pointing to an exisiting object
          # so we have 2 variables, pointing to 1 object

a += b    # a is being REASSIGNED to a new object
          # because + operator returns a new object

---------------------------------

# What's a data structure?
  # A structure that just holds data
# What's a collection?
  # A type of data structure that referes to arrays, hashes, or strings

# In a hash you don't really care about order, you just want to retrieve the value
# In an array, the order matters, because it's based upon the index position

# What's the difference between an Array and a Hash
  # order
  # index vs key retrieval
  # arrays can have duplicates, but hash keys are unique

---------------------------------

#### Array Practice Steps
1) Iterate over an array of numbers [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
2) Same as above, except print out the number only if the value is greater than 5
3) Append 12 to the end of the array
4) Prepend 0 to the beginning of the array
5) Remove the 12, and append a 3
6) Remove duplicates using 1 method (i.e. dont loop or iterate)
7) Extract all odd numbers into a new array (selection)
8) Increment all numbers by 1 (transformation - new vs mutation)
9) Find sum of all numbers

---------------------------------

1) Writing a loop to iterate through the array using loop

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

inx = 0

loop do
  puts arr[idx]
  inx += 1
  break if idx == arr.size
end

# returns
1
2
3
4
5
6
7
8
9
10
=> nil  #returns nil

---------------------------------

# each will go through each element in the array
# always be aware of the return value of our code!

1) Writing a loop to iterate through the array using each

arr. each do |n|  # do / end is a block, and is being passed into the each method
  puts n
end

# returns
1
2
3
4
5
6
7
8
9
10
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]  # returns the original array

---------------------------------

2) Same as above, except print out the number only if the value is greater than 5

arr.each do |n|
  puts n if n > 5
end

---------------------------------

3) Append 12 to the end of the array

---------------------------------

arr << 12
p arr

---------------------------------

4) Prepend 0 to the beginning of the array

arr.unshift(0)
p arr

---------------------------------

5) Remove the 12, and append a 3

arr.pop
arr << 3

---------------------------------

6) Remove duplicates using 1 method (i.e. dont loop or iterate)

arr.uniq!

---------------------------------

7) Extract all odd numbers into a new array (selection)

# select method
***memorize this definition***
# select returns a new array based on the block's return vallue*.
#   If the return value evaluates to true,
#   then the element is selected.
#   If the return value evealuates to false,
#   then the element is NOT selected.

odds = arr.select do |n|
  n + 1
end

---------------------------------

8) Increment all numbers by 1 (transformation - new vs mutation)

# map method
***memorize this definition***
# map returns a new array based on the
#  return value*. Each element is transformed
#  based on the return value

incremented = arr.map do |n|
  n > 1
end

---------------------------------

#### Hashes Practice Steps

1) Get the value of "b"
2) Add this key/value pair to the hash: {e: 5}
3) Iterate over the hash and print out the keys and values
4) Print out the key/value pairs where the value is less than 3.5
5) Return a new hash where value is less than 3.5
6) Delete all key/value pairs where the value is less than 3.5

---------------------------------

hsh = {a: 1, b: 2, c:3, d:4, e: 5}

1) Get the value of "b"

hsh[:b]

---------------------------------

2) Add this key/value pair to the hash: {e: 5}

hsh[:e] = 5

---------------------------------

3) Iterate over the hash and print out the keys and values

hsh.each do |k, v|
  puts "key is #{k}, value is #{v}"
end

---------------------------------

4) Print out the key/value pairs where the value is less than 3.5

hsh.each do |k, v|
  puts "key is #{k}, value is #{v}" if v < 3.5
end

---------------------------------

5) Return a new hash where value is less than 3.5

small_vals = hsh.select do |k, v|
  v < 3.5
end

p small_vals

---------------------------------

6) Delete all key/value pairs where the value is less than 3.5

small_vals = hsh.delete_if do |k, v|
  v < 3.5
end

---------------------------------

#### Other

hsh = {a: 1, b: 2, c:3, d:4, e: 5}

arr << hsh

hsh[:f] = 6

p arr

# returns
[1, 2, 3, 4, 5, {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}]

---------------------------------

#### Other => Look at Array Documentation

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.all? { |n| n.odd? }
=> false

arr.all? { |n| n < 10 }
=> false

arr.all? { |n| n < 11 }
=> true

arr.any? { |n| n < 11 }
=> true

---------------------------------

#### Enumerable

# Enumerable is a module that is mixed in to arrays and hashes.
# Gives us a lot of extremely useful and interesting methods.
#  ex. first, max, min, map, reject, select, sort, to_a
















