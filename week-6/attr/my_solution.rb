#Attr Methods

# I worked on this challenge by myself.

# I spent [1] hours on this challenge.

# Pseudocode

# Input: A string containing a name
# Output: A greeting message containing the name being input
# Steps:

# Step 1: Create initialize method for the NameData class which gets passed one argument
# Step 2: Create instance variable and set it to the argument passed in
# Step 3: Create an attr_reader by the name of what the instance variable set is
# Step 4: Create initialize method for the Greetings class
# Step 5: Create instance variable and set it to a new instance of the NameData class
# Step 6: Create an attr_reader by the name of what the instance variable set is
# Step 7: Create hello method
# Step 8: Puts string to greet interpolating the string of the name passed in

class NameData
  attr_reader :name
  def initialize(name)
    @name = name
  end
end


class Greetings
  attr_reader :name
  def initialize(name)
    @name = NameData.new(name).name
  end

  def hello
    puts "Hello #{@name}! How wonderful to see you today."
  end
end



# Reflection

# Release 1 - release_1.rb:

# What are these methods doing?

  # - These methods are just printing the data passed into them and later changing data already passed into them.

# How are they modifying or returning the value of instance variables?

  # - Methods which modify the instance variable itself are being called on the object. This does not mean the variable is changed forever. The methods called are modifying just that instance. Creating a new object would initialize new parameters from the beginning all over again.

# Release 2 - release_2.rb:

# What changed between the last release and this release?

  # - An attr_reader was added for age and the method what_is_age was removed as it is no longer necessary. Having the attr_reader for age simply does exactly what it looks like. attr stands for attribute. All it means is reading the attribute of age. Easy right? Eliminates the need for a method that just returns the age.

# What was replaced?

  # - The what_is_age method was replaced with an attr_reader.

# Is this code simpler than the last?

  # - A lot simpler. There is no need to build a method that simply returns something if you already have a standard library way of creating the method in a very short one line.

# Release 2 - release_3.rb:

# What changed between the last release and this release?

  # - An attr_writer was added to this file. This can also easily be done using an attr_accessor since in the last release file, the attr_reader was added and now the attr_writer. When both of those are necessary, they can bothe be achieved in one shot by doing attr_accessor. This creates a method for both reading and writing to the instance variable.

# What was replaced?

  # - The change_my_age=(new_age) method was replaced with the attr_writer.

# Is this code simpler than the last?

  # - Yes. This code makes use of the attr_writer which eliminates the need to create an entire method for it.


# -----------------------------------------------------------------------------------------------------------------

# Reflection

# Release 6:

# What is a reader method?

  # - A reader method is a method that simply returns that instance variable

# What is a writer method?

  # - A writer method is a method that can be used to set your instance variable to a new value

# What do the attr methods do for you?

  # - They do a few things. They save you time, make you write less code and make your code look cleaner. They replace the reader and writer methods with just one line. A reader method can be replaced with just attr_reader just like attr_writer will replace a writer method. And if you need both, then attr_accessor will do both for you eliminating the need for attr_reader, attr_writer, and writing either of the two methods out.

# Should you always use an accessor to cover your bases? Why or why not?

  # - I don't think you should always use an accessor. Like in the example above, in both classes, a writer method was unnecessary to create so we used attr_reader since an accessor will create both. Also you don't want to create an option to write to variables where it isn't needed for many safety reasons.

# What is confusing to you about these methods?

  # - The attr methods were pretty confusing and class methods in general got really tricky for me before. I am starting to get a better idea of them though and in terms of this lesson, nothing is confusing anymore to me.