# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [0.2] hours on this challenge.

# 0. Pseudocode

# Input: Integer value which represents the amount of sides
# Output: One output which raises an error if sides < 1, another for returning the amount of sides passed in, and another which returns a random number between 1 and the amount of sides passed in.
# Steps:

# Step 1: set an instance variable equal to the amount of sides passed in (within the initialize method) as well as raise an error if the amount of sides is less than 1
# Step 2: return in the sides method the instance variable set in the initialize method.
# Step 3: generate random number betwee 1 and the instance variable number.


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     @sides = sides
#     if sides < 1
#       raise ArgumentError, 'Can not be initialized with no sides'
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(1..@sides)
#   end
# end



# 3. Refactored Solution

class Die
  attr_accessor :sides
  def initialize(sides)
    @sides = sides
    if sides < 1; raise ArgumentError, 'Can not be initialized with no sides' end
  end

  def roll
    rand(1..@sides)
  end
end



# 4. Reflection

# What is an ArgumentError and why would you use one?

  # - An ArgumentError is an error that you can set to raise when a condition isn't satisfied.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

  # - I knew about these methods prior but as of now in Phase 0, I started implementing the initialize method. There were no challenges thus far implementing it.

# What is a Ruby class?

  # - A Ruby class is a blueprint for all of your methods.

# Why would you use a Ruby class?

  # - You would use a Ruby class for when you want to describe an overall object, create new objects, even manipulate existing class methods. There are a ton of reasons for using a Ruby class. Everything in Ruby is an object so therefore creating classes when programming would be ideal. Since everything is an object in Ruby, every class we create can re-use methods within it making our lives as developers much easier.

# What is the difference between a local variable and an instance variable?

  # - A local variable is a variable only within it's scope. An instance variable is a variable accessable by many methods within a class and can be manipulated in multiple scopes. It would just be an instance of it. For example, calling on a class of Car which has name being passed into the initialize method like so:
  # ferrari = Car.new("Ferrari") => Creates an instance of the car "Ferrari"

# Where can an instance variable be used?

  # - An instance variable can be used anywhere within it's class where you need an instance of that variable.