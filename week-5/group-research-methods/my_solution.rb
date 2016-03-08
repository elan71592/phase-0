# Research Methods

# I spent [0.1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  result = []
  source.each { |word| if word.to_s.include?(thing_to_find.to_s); result << word end }
  result
end

def my_hash_finding_method(source, thing_to_find)
  result = []
  source.each { |dog, age| if age.to_i == thing_to_find.to_i; result << dog end }
  result
end

# Identify and describe the Ruby method(s) you implemented.
# I used each method to iterate through the contents of the array being passed in and the hash as well
# I used .to_s in the first method because there were numbers being passed in and it had to be converted to a string before checking anything.
# I used the include?() method to check if the thing_to_find is included in the word on the current iteration.
# I used .to_i to ensure that I am working with integers when checking the dogs age.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
# I used each method to iterate through the contents of the array being passed in and the hash as well
# I used .to_s in the first method because there were numbers being passed in and it had to be converted to a string before checking anything.
# I used the include?() method to check if the thing_to_find is included in the word on the current iteration.
# I used .to_i to ensure that I am working with integers when checking the dogs age.

# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

# The each method is very common in ruby and an awesome method to use. Basically, you can call .each on a lot of things like hashes and arrays or ranges and variables storing anything of that nature. When you use .each, it is followed by do |placeholder| end. What this does is tell ruby, as you go through each thing in my collection, do this substituting each thing for placeholder. So placeholder is exactly that. I could have also wrote variable. You can think of it any way you like, but essentially you're saying that if your item is ["fruits"], then "fruits" will be substituted for whatever your placeholder name is and it will use that name for all of the following items as well. In between the |placeholder| and end, you can implement your logic any way you'd like now that you have control over each element.

# .to_s just converts your element to a string. If I said 1.to_s, then that would come out as "1". If you call .to_s on a string, it stays the same.

# include?(whatever) is a common method too. It's self explanitory for what it does but you can call it on a string or array to see if whatever you are calling this method on includes the argument you pass it.

# .to_i just converts your element to an integer. If you call it on a string, you will always get a 0 unless the string is similar to this: "3", "46", "71". If your string contains only numbers, it will convert to that number.



# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
# I already knew these basic methods and I didn't have to research but explaining them helps me make it all the more real to myself that I do understand it because soon we'll get to the parts that I will have hell with and so some self-encouragement and confidence for now is doing me some good. I'd be happy to help and explain anything I can multiple times to whoever needs it.
#
#