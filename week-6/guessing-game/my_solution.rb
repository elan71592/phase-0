# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: two inputs for two different methods. the initalize method contains the answer and the guess method contains the guess
# Output: the guess method should output a key according to how the guessis compared too the answer, the solved method should output true or false based on whether or not the guess was correct
# Steps:
# Step 1: Create two methods (guess & solved?)
# Step 2: Create conditional statement in guess method
# Step 3: Check to see if the guess is higher, lower, or equal to the answer
# Step 4: Return key according to conditional statement
# Step 5: Create conditional statement in solved? method
# Step 6: Check if the guess is equal to the answer
# Step 7: Return true or false


# Initial Solution
# class GuessingGame
#   def initialize(answer)
#     @answer = answer
#     @key = nil
#   end

#   def guess(guess)
#     @guess = guess
#     if guess > @answer
#       @key = :high
#     elsif guess < @answer
#       @key = :low
#     else
#       @key = :correct
#     end
#     return @key
#   end

#   def solved?
#     if @guess != @answer
#       false
#     else
#       true
#     end
#   end
# end




# Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end

  def guess(guess)
    @guess = guess
    if guess > @answer
      :high
    elsif guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    @guess == @answer
  end
end





# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

  # -

# When should you use instance variables? What do they do for you?

  # -

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  # -

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  # -