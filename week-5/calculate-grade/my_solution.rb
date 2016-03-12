# Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myslef.

# 0. Pseudocode

# What is the input? An array of numbers
# What is the output? (i.e. What should the code return?) A letter grade according to the average of those numbers
# What are the steps needed to solve the problem?
# Step 1: Set letter variables equal to the range of grades for that letter
# Step 2: Calculate average of numbers in array
# Step 3: Check which letter variable has that number
# Step 4: Return letter grade

# 1. Initial Solution
# def get_grade(arr)
#   a = (90..100).to_a
#   b = (80..89).to_a
#   c = (70..79).to_a
#   d = (60..69).to_a
#   sum = 0

#   arr.each do |number|
#     sum += number
#   end

#   average = sum / arr.count

#   if a.include?(average)
#     result = "A"
#   elsif b.include?(average)
#     result = "B"
#   elsif c.include?(average)
#     result = "C"
#   elsif d.include?(average)
#     result = "D"
#   else
#     result = "F"
#   end
#   p result
# end


# 3. Refactored Solution
def get_grade(arr)
  a = (90..100).to_a
  b = (80..89).to_a
  c = (70..79).to_a
  d = (60..69).to_a
  sum = 0
  arr.each { |number| sum += number }
  average = sum / arr.count

  if a.include?(average)
    result = "A"
  elsif b.include?(average)
    result = "B"
  elsif c.include?(average)
    result = "C"
  elsif d.include?(average)
    result = "D"
  else
    result = "F"
  end
  p result
end


# 4. Reflection