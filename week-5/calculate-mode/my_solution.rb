# Calculate the mode Pairing Challenge

# I worked on this challenge with Ena!

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.


# 0. Pseudocode

# What is the input? An array which contains elements for us to go through and find the mode.
# What is the output? (i.e. What should the code return?) The output is an array with the mode values.
# What are the steps needed to solve the problem?
# Step 1: define method which takes one argument
# Step 2: define variables. One for a hash which will contain all the data to work with and one for an array that will contain the output.
# Step 3: use a loop (each method) to iterate through the input array and set it inside the hash variable we created. It should have a value of the amount of times each element we iterate over is present in the array.
# Step 4: store the values of the hash sorted in a variable.
# Step 5: store the highest value of the variable holding all of the hash variables.
# Step 6: grab keys from our hash using our highest value variable and store them in a new variable
# Step 7: return that variable containing the mode



# 1. Initial Solution
# def mode(array)
#   element_counts = {}
#   result = []

#   array.each do |element|
#     element_counts[element] = array.count(element)
#   end

#   sorted_values = element_counts.values.sort

#   highest_value = sorted_values.max

#   all_values = element_counts.select { |key, value| value == highest_value }

#   all_values.each do |key, value|
#     result << key
#   end

#   result
# end


# 3. Refactored Solution
def mode(array)
  element_counts = {}
  result = []

  array.each { |element| element_counts[element] = array.count(element) }
  highest_value = element_counts.values.sort.max

  all_values = element_counts.select { |key, value| value == highest_value }
  all_values.each { |key, value| result << key }

  result
end


# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

  # - We used both a hash and an array. We used an array for the output result but we used a hash because we needed a way to store the elements from the array being passed in along with their corresponding number of times that element appears in the array. Using another array for this would not work.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

  # - We actually did a really good job on the pseudocode for this. At least I feel we did. The last challenge was really tough and a good preparation for writing the pseudocode here and the implementation was done smoothly. We had a few bumps in the road but for the most part, it was smooth sailing.


# What issues/successes did you run into when translating your pseudocode to code?

  # - We had a problem figuring out how to get the keys for alike values.

# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

  # - We used an each method and a select method in both our initial and refactored solution. They were fairly simple to implement but difficult to find (not each but the select one) haha.