# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # define method
  # default quantity of 1
  # print the list to the console [can you use one of your other methods here?]
# output: [hash]

# Method to add an item to a list
# input: item name and optional quantity
# steps: define method that accepts two arguments, one default argument
# push arguments as keys and values into grocery_list hash
# output:

# Method to remove an item from the list
# input: grocery_list and item to remove
# steps: define remove item method and pass two arguments
# output: new list without removed item

# Method to update the quantity of an item
# input: list and new quanity of item
# steps: define method with two arguments
# output: updated list

# Method to print a list and make it look pretty
# input: list
# steps: put items and quantities on new lines (ex. apple: 1)
# output:


def grocery_list(items)
  groceries = {}
  items.split(" ").each { |item| groceries[item] = 1 }
  groceries
end

def add_item(list, item, qty = 1)
  list[item] = qty
end

def remove_item(list, item)
  list.delete(item)
end

def update_quantity(list, item, qty)
  list[item] = qty
end

def pretty_list(list)
  list.each { |item, qty| puts "#{item}: #{qty}" }
end

g_list = grocery_list("carrots apples cereal pizza")
p g_list

add_item(g_list, "ice cream", 3)
p g_list

remove_item(g_list, "pizza")
p g_list

update_quantity(g_list, "apples", 4)
p g_list

pretty_list(g_list)

# What did you learn about pseudocode from working on this challenge?

  # Renforced our method for writing pseudocode

# What are the tradeoffs of using Arrays and Hashes for this challenge?

  # Arrays would not have been a good method for this challenge because arrays are unable to containe key value pairs which hashes are really good at doing. A hash for a grocery list is great and easy to implement because of the simplicity of having an quanitity set for an item. An array can hold strings of items and numbers for quantities but they don't keep them together or if you structure it in a way that does, it wouldn't make any logical sense.

# What does a method return?

  # A method always returns the last line of it unless otherwise explicitly expressed elsewhere.

# What kind of things can you pass into methods as arguments?

  # You can pass in pretty much anything. You can pass in arrays, hashes, numbers, strings, and even variables that contain other methods.

# How can you pass information between methods?

  # Set a variable equal to the method you want to pass along.

# What concepts were solidified in this challenge, and what concepts are still confusing?

  # No concepts are confusing however I did not recall being able to set a variable equal to a method and then just pass it in as an argument so that was really cool and stuck with me.