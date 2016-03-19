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

  # - Methods get called on so when they get called on, they perform actions. These actions can be interpereted as the same way we as humans are objects and carry out certain actions or functions if you will. Instance variables are like creating memories in the object. For us when we want to store pictures on something, we use a flash drive. The method can be save_to_flash which when called on a human, it would make use perform the action of saving it on a flash drive. The instance variable would be on the flash drive and the pictures would be stored to it, for instance like in an array. It's kind of like basic human actions and the brains of those actions.

# When should you use instance variables? What do they do for you?

  # - Instance variables should be used and created if you are trying to make use of them in other methods within your class. They give you the freedom to modify data stored to them in multiple methods which can be a very powerful and useful tool.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

  # - Flow control is kind of like organizing your code. Making sure it is readable and keeping it within good structure. I didn't have any issues with flow control here.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

  # - The symbols are easier to read than strings in my opinion and we aren't trying to do anything but return the keys. We do not need to iterate over each character or touch the keys at all. Simply returning them is a good enough reason I think for using keys in this challenge.