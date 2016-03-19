# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [0.1] hours on this challenge.

# Pseudocode

# Input: an array of labels (letters)
# Output: depending on the method there will be an argument error output, a count of how many items are in the array passed in (this means how many sides there are), and a random pick from the array.
# Steps:

# Step 1: Set variable for the array being passed in to initalize method
# Step 2: make conditional statement
# Step 3: create error message that comes up if the array is empty.
# Step 4: count how many sides there are
# Step 5: pick random value from input array


# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @count = labels.count
    if labels.empty?
      raise ArgumentError.new("There are no labels here. Please give me some labels to work with!")
    end
  end

  def sides
    @count
  end

  def roll
    @labels.sample
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    @labels = labels
    raise ArgumentError.new("There are no labels here. Please give me some labels to work with!") if labels.empty?
  end

  def sides
    @labels.count
  end

  def roll
    @labels.sample
  end
end






# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

  # - They are very similar. Just that here we are working with an array of strings for the input as opposed to only an integer being passed in. The logic didn't have to be changed much.

# What does this exercise teach you about making code that is easily changeable or modifiable?

  # - Being able to easily change or modify code is a blessing and a curse. On one hand it is good to have code you can easily change but on the other hand you don't want it to be too accessible in the event that if one piece of code gets easily modified, another piece of code accidentally becomes easily useless.


# What new methods did you learn when working on this challenge, if any?

  # - I didn't learn any new methods but I used a method I like for getting a random value from an array which is the sample method.


# What concepts about classes were you able to solidify in this challenge?

  # - From this challenge I didn't get much to solifify of. I have been exposed to classes in Ruby before so most of the beginner stuff of Ruby classes is fairly simple to me. It's about to turn on me though. I can feel it haha.