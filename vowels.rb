# Write a method that takes an array of strings, and returns an array of
# the same string values, except with the vowels removed.

# **input:**
# Write a list of words: green, yellow, black, white

# **output:**
# List of modified words: grn, yllw, bck, wht


VOWELS = ["a", "e", "i", "o", "u"] # create a constant, to determine if a character should be removed

def remove_vowels(strings) # iterate through each vowel, set parameter to string, return string
  strings.map do |string|
    chars = string.split("") # splitting the string into an array
    VOWELS.each { |vowel| chars.delete(vowel) }
    chars.join("")
  end
end
=end

p remove_vowels(["green", "yellow", "black", "white"])
