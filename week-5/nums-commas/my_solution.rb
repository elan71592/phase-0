# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? The input is the number that needs commas
# What is the output? (i.e. What should the code return?) The code should return a number string that contains commas where appropriate.
# What are the steps needed to solve the problem?
#  Step 1: create a variable that sets the number being input to a string
#  Step 2: create an empty array that we will put each number into as it's own element.
#  Step 3: create a result variable and set it to an empty string. This will be our output
#  Step 4: create a loop that goes though every character in our converted number to string and pushes each number into the array as a string and it's own separate element. (This can also be easily achieved using .split(//) but we were asked not to use it so this is less efficient but works.)
#  Step 5: use conditional logic like an if/else statement to check if the numbers are between a certain range. (ex. if the number is between 1000 and 9999, then there will only be one comma necessary).
#  Step 6: If the conditional statement determines it is within a range that needs commas, create a loop within the top level statement that contains another conditional statement which also uses indexes to check where the comma needs to go.
#  Step 7: After checking where the comma needs to go, add it with the number into the result variable that we have set to an empty string before.
#  Step 8: Return the result.


# 1. Initial Solution
# def separate_comma(num)
#   num_string = num.to_s
#   num_arr = []
#   result = ""

#   num_string.each_char do |char|
#     num_arr << char
#   end

#   if num.to_i < 1000
#     return num.to_s
#   elsif num.to_i < 9999
#     num_arr.each_with_index do |number, idx|
#       if idx == 0
#         result << number + ","
#       else
#         result << number
#       end
#     end
#   elsif num.to_i < 99999
#     num_arr.each_with_index do |number, idx|
#       if idx == 1
#         result << number + ","
#       else
#         result << number
#       end
#     end
#   elsif num.to_i < 999999
#     num_arr.each_with_index do |number, idx|
#       if idx == 2
#         result << number + ","
#       else
#         result << number
#       end
#     end
#   elsif num.to_i < 9999999
#     num_arr.each_with_index do |number, idx|
#       if idx == 0 || idx == 3
#         result << number + ","
#       else
#         result << number
#       end
#     end
#   elsif num.to_i < 99999999
#     num_arr.each_with_index do |number, idx|
#       if idx == 1 || idx == 4
#         result << number + ","
#       else
#         result << number
#       end
#     end
#   end
#   result
# end


# 2. Refactored Solution
def separate_comma(num)
  result = num.to_s
  commas = num.to_s.length / 3
  idx = -4

  until result.count(",") == commas; result.insert(idx, ","); idx -= 4 end
  if result[0] == ","; result = result[1..-1] end

  p result
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

  # I had a really hard time with the pseudocode. I usually like to dive right in and solve the problem. My approach was very simple. I understood that working up the numbers would be really easy. If I can just take the number being passed in and use it as a string of individual characters, I can manipulate them how I want and add the commas as necessary.

# Was your pseudocode effective in helping you build a successful initial solution?

  # The pseudocode wasn't very helpful. I didn't look at it much when coding.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

  # I didn't use any new ruby methods. I used a simple each method and if/else statements. In my refactoring, everything stayed the same. I just made it easier to read and not take up as many lines of code. Other than that, the methods were the exact same.

# How did you initially iterate through the data structure?

  # I used an each loop.

# Do you feel your refactored solution is more readable than your initial solution? Why?

  # I definitely think my refactored solution is more readable. We as humans read from left to right in most languages and when I refactored to one line, it reads almost as if you're reading from a book.