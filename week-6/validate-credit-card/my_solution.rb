# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:


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
