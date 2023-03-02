# CODEWARS 1
# https://www.codewars.com/kata/563fb342f47611dae800003c/train/ruby

# Create a function that will trim a string (the first argument given) if it is longer than the requested maximum string length (the second argument given). The result should also end with "..."

# These dots at the end also add to the string length.

# For example, trim("Creating kata is fun", 14) should return "Creating ka..."

# If the string is smaller or equal than the maximum string length, then simply return the string with no trimming or dots required.

# e.g. trim("Code Wars is pretty rad", 50) should return "Code Wars is pretty rad"

# If the requested string length is smaller than or equal to 3 characters, then the length of the dots is not added to the string length.

# e.g. trim("He", 1) should return "H...", because 1 <= 3

# Requested maximum length will be greater than 0. Input string will not be empty.

def trim(string, size)
  #your code here
end

# CODEWARS 2
# URL - https://www.codewars.com/kata/52449b062fb80683ec000024/train/ruby

# The marketing team is spending way too much time typing in hashtags.
# Let's help them with our own Hashtag Generator!

# Here's the deal:

# It must start with a hashtag (#).
# All words must have their first letter capitalized.
# If the final result is longer than 140 chars it must return false.
# If the input or the result is an empty string it must return false.
# Examples
# " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
# "    Hello     World   "                  =>  "#HelloWorld"
# ""                                        =>  false

def generateHashtag(str)
  new_str = str.split(" ").map(&:capitalize).join("")
  new_str == "" || new_str.length > 139 ? false : new_str.prepend("#")
end

# CODEWARS 3
# https://www.codewars.com/kata/5a00a8b5ffe75f8888000080/train/ruby

# Given an array containing only zeros and ones, find the index of the zero that, if converted to one, will make the longest sequence of ones.

# For instance, given the array:

# [1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 0, 1, 1]
# replacing the zero at index 10 (counting from 0) forms a sequence of 9 ones:

# [1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 1]
#                   '------------^------------'
# Your task is to complete the function that determines where to replace a zero with a one to make the maximum length subsequence.

# Notes:

# If there are multiple results, return the last one:
# [1, 1, 0, 1, 1, 0, 1, 1] ==> 5

# The array will always contain only zeros and ones.
# Can you do this in one pass?

def replace_zero(arr)
  #..
end

# CODEWARS 4
# URL - https://www.codewars.com/kata/583203e6eb35d7980400002a/ruby

# Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

# Rules for a smiling face:

# Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
# A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
# Every smiling face must have a smiling mouth that should be marked with either ) or D
# No additional characters are allowed except for those mentioned.

# Valid smiley face examples: :) :D ;-D :~)
# Invalid smiley faces: ;( :> :} :]

# Example
# countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
# countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
# countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;
# Note
# In case of an empty array return 0. You will not be tested with invalid input (input will always be an array). Order of the face (eyes, nose, mouth) elements will always be the same.

def count_smileys(arr)
  #your code here
end

# CODEWARS 5
# URL - https://www.codewars.com/kata/54a91a4883a7de5d7800009c/train/ruby

# Your job is to write a function which increments a string, to create a new string.

# If the string already ends with a number, the number should be incremented by 1.
# If the string does not end with a number. the number 1 should be appended to the new string.
# Examples:

# foo -> foo1

# foobar23 -> foobar24

# foo0042 -> foo0043

# foo9 -> foo10

# foo099 -> foo100

# Attention: If the number has leading zeros the amount of digits should be considered.

def increment_string(input)
  if (!input[0] || input[-1].match?(/[a-z]/))
    return input << "1"
  end
  numbers_arr = input.gsub(/[a-z]/, "-").chars.join("").split("-")
  num_arr = numbers_arr[-1].chars.map(&:to_i)
  num_arr[num_arr.length - 1] += 1
  for i in (num_arr.length - 1).downto(1)
    if num_arr[i] == 10
      num_arr[i] = 0
      num_arr[i - 1] += 1
    end
  end
  if num_arr[0] == 10
    num_arr[0] = 0
    num_arr.unshift(1)
  end
  "#{input.gsub(numbers_arr[-1], "")}#{num_arr.join("")}"
end

#  CODEWARS 6
#  URL - https://www.codewars.com/kata/51b62bf6a9c58071c600001b/train/ruby

#  Create a function taking a positive integer between 1 and 3999 (both included) as its parameter and returning a string containing the Roman Numeral representation of that integer.

# Modern Roman numerals are written by expressing each digit separately starting with the left most digit and skipping any digit with a value of zero. In Roman numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending order: MDCLXVI.

# Example:

# solution(1000) # should return 'M'
# Help:

# Symbol    Value
# I          1
# V          5
# X          10
# L          50
# C          100
# D          500
# M          1,000
# Remember that there can't be more than 3 identical symbols in a row.

# More about roman numerals - http://en.wikipedia.org/wiki/Roman_numerals

def solution(number)
  # convert the number to a roman numeral string
end
