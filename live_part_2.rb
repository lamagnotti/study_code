# Notes taken on Live Session: Beginning Ruby Part 2

def amethod(param)
  str += " world" # this would throw an error because str is outside of the scope
end

str = "hello"     # str is initalized here in this scope
amethod(str)      # pass in a string to this method

p str             # will this str method be modified?

******************************

def amethod(param)
  param += " world"   # this is going to return a new string object, NOT permanent, reassignment, outputs hello
                      # param = param + " world" (reassigning param to )
  param + " world"    # NOT permanent, string concatination, the + is a method, outputs hello
  param << " world"   # WILL mutate the calling object, which is param, << is a method call
                      # destructive, outputs hello world
end

str = "hello"
amethod(str)

p str

******************************

# "Walk towards ambiguity" - Chris Lee
# Variables point to objects
# 2 variables, 1 object

a = "hello"        # a is being initalized to hello
b = a

b << " world"

puts a
puts b

a = "hey"          # reassignment, changed the original a from hello to hey
b << " universe"

puts a
puts b

******************************

# Why won't this work?
# Because + returns a new string

def prefix(str)   #
  "Mr. " + str    #
end

name = 'joe'
prefix(name)

puts name

******************************

# Let's fix it.

def prefix(str)   #
  "Mr. " + str    #
end

name = 'joe'
name = prefix(name) # This is a returning a value that we're going to use

puts name



