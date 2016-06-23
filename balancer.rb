#------------------------------#

# Write a method that takes a string, and returns a boolean indicating whether
# this string has a balanced set of parentheses.

# balancer("hi") #=> true
# balancer("(hi") #=> false
# balancer("(hi)") #=> true

# Bonus
# balancer(")hi(") # => false

def balancer(string)
  return false unless string.count("(") == string.count(")")

  # detect order is also good
  paren_count = 0
  string.split("").each do |char|
    paren_count += 1 if char == "("
    paren_count -= 1 if char == ")"

    return false if paren_count < 0
  end

  true
end

p balancer("hi") #=> true
p balancer("(hi") #=> false
p balancer("(hi)") #=> true
p balancer("(()) )(") #=> false
