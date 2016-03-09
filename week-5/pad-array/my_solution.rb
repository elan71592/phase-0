# Pad an Array

# I worked on this challenge with Ena.

# I spent [2] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, a minimum size of the return array, and argument to be padded into array
# What is the output? (i.e. What should the code return?) padded array fitting the minimum size
# What are the steps needed to solve the problem?
# Step 1: Create a variable that will represent the amount of elements needed to be padded into the array
# Step 2: Use conditional logic to determmine whether the original size of the array being passed in is less than the minimum size of the array requested and then return the array if it is not.
# Step 3: Use first variable created to make a loop condition and push in the value as many times necessary for the array's count to satisfy the minimum size passed in.

# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   counter = min_size - array.count
#   if min_size <= array.count
#     return array
#   else
#     until counter == 0
#       array << value
#       counter -= 1
#     end
#   end
#   array
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = array.clone
#   counter = min_size - array.count

#   if min_size == 0
#     return new_array
#   else
#     until counter == 0
#       new_array << value
#       counter -= 1
#     end
#   end
#   new_array
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
  counter = min_size - array.count
  if min_size <= array.count; return array else array << value ; counter -= 1 unless counter == 0 end
  array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  counter = min_size - array.count

  if min_size == 0
    return new_array
  else
    until counter == 0
      new_array << value
      counter -= 1
    end
  end
  new_array
end

# 4. Reflection

# Which data structure did you and your pair decide to implement and why?

  # - We continued the use of arrays. It's very simple to just push into an array and use a counter to determine how many times we would push into it.

# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

  #  - We were much more successful in breaking down the problem this time. It still took us a while to get this working and done. There were a few bumps but it ended up working out.

# What issues/successes did you run into when translating your pseudocode to code?

  #  - The main issue was the tests spitting back at us that the object id's match up and that it was a destructable method when they were asking for a non-destructive method at that point. It took some time to figure that one out.

# What methods did you use to iterate through the content? Did you find any good ones when you were
# refactoring? Were they difficult to implement?

  #  - We set a variable in the beginning named counter which calculated for us how many spots in the array are left for us to have to fill. Using that number, we were able to use the until loop (not necessarily any methods) and just push the value passed into the method, into the array and decrease that counter by 1. We did however, use the clone method and the count method to re-create the orginal array and to count the amount of elements in the array.