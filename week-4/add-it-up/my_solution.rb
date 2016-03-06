# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with Ena.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: array of numbers
# Output: sum total of numbers in array
# Steps to solve the problem:

# define method (total) that takes container
# go through contents of container
# add each number in container and store as new value
# return new value

# 1. total initial solution

def total(num_array)
  sum = 0
  num_array.each do |number|
    sum = sum + number
  end
  sum
end

# 3. total refactored solution

def total(num_array)
  sum = 0
  num_array.each { |num| sum += num }
  sum
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: container of strings
# Output: strings combined into one string
# Steps to solve the problem.
# define method with container
# go through contents of container
# compare each item in container
# set character manipulation

# 5. sentence_maker initial solution

def sentence_maker(string_array)
  result = ""
  string_array.each do |word|
    if word.to_s == string_array[0].to_s
      result << word.to_s.capitalize + " "
    elsif word.to_s == string_array[-1].to_s
      result << word.to_s + "."
    else
      result << word.to_s + " "
    end
  end
  result
end


# 6. sentence_maker refactored solution


def sentence_maker(string_array)
  string_array.join(" ").capitalize + "."
end