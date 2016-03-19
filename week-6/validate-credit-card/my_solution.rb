# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Ena.
# I spent [2] hours on this challenge.

# Pseudocode

# Input: Set of credit card numbers
# Output: Boolean statement regarding validity of credit card
# Steps:
# -Step 1: Set up intialize method within class
# -Step 2: Define check_card method
# -Step 3: Raise argument error if set of numbers not equal to 16
# -Step 4: Double every other digit starting from the second to last
# -Step 5: Break up every double digit along with the untouched digits and sum them together
# -Step 6: If sum is not equally divisible by ten, retun false validity, otherwise return true validity


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard
#   def initialize(valid_card)
#     raise ArgumentError.new("Wrong count") if valid_card.to_s.length != 16
#     @valid_card = valid_card
#   end

#   def check_card
#     number_string_array = @valid_card.to_s.split(//)
#     number_array = []
#     number_string_array.each { |num| number_array << num.to_i }
#     doubled = []
#     sum = 0

#     to_double = number_array.select.with_index do | _, idx |
#       idx.even?
#     end

#     rest = number_array.select.with_index do | _, idx |
#       idx.odd?
#     end

#     to_double.each do |num|
#       number = num * 2
#       number.to_s.split(//).each do |num_split|
#         doubled << num_split.to_i
#       end
#     end

#     doubled.push(rest).flatten!

#     doubled.each do |num|
#       sum += num
#     end

#     if sum % 10 == 0
#       true
#     else
#       false
#     end
#   end
# end



# Refactored Solution
class CreditCard
  def initialize(valid_card)
    raise ArgumentError.new("Wrong count") if valid_card.to_s.length != 16
    @valid_card = valid_card
  end

  def check_card
    num_arr = @valid_card.to_s.chars.map { |int| int.to_i }
    doubled = []
    sum = 0

    to_double = num_arr.select.with_index { | _, idx | idx.even? }
    left_over = num_arr.select.with_index { | _, idx | idx.odd? }

    to_double.each do |num|
      number = num * 2
      number.to_s.chars.each { |num_split| doubled << num_split.to_i }
    end

    doubled.push(left_over).flatten!

    doubled.each { |num| sum += num }

    if sum % 10 == 0
      true
    else
      false
    end
  end
end







# Reflection

# What was the most difficult part of this challenge for you and your pair?

  # - For me I think the most challenging part was splitting up the two categories of numbers to double and the other numbers left over. For a while we were stuck on the idea of modifying the array using delete_at(index) while iterating over the numbers this way only the ones left over needed would be in the original array but later found the select method works the best!

# What new methods did you find to help you when you refactored?

  # - The chars method was awesome instead of using split(//). I also ran a speed test and the chars method was slightly faster. It doesn't really make a difference but still it's nice.

# What concepts or learnings were you able to solidify in this challenge?

  # - I think I got a really solid understanding of working with arrays and indexes and love how the select method works!