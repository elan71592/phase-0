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

  # -

# What does this exercise teach you about making code that is easily changeable or modifiable?

  # -


# What new methods did you learn when working on this challenge, if any?

  # -


# What concepts about classes were you able to solidify in this challenge?

  # -