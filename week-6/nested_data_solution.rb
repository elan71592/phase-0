# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]

array.flatten!.each_with_index do |element, idx|
  if element.is_a? Integer
    array[idx] = element + 5
  end
end

p array


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.flatten!.each_with_index do |number, idx|
  number_array[idx] = number + 5
end

p number_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def looper(array)
  array.each_with_index do |element, idx|
    if element.is_a? String
      array[idx] = element + "ly"
    else
      element.each_with_index do |element2, idx2|
        if element2.is_a? String
          array[idx][idx2] = element2 + "ly"
        end
      end
    end
  end
end

def add_ly(names_array)
  names_array.each_with_index do |element, idx|
    if element.is_a? String
      names_array[idx] = element + "ly"
    else
      looper(element)
    end
  end
  p names_array
end

add_ly(startup_names)

# Reflection:

# What are some general rules you can apply to nested arrays?

  # - When working with nested arrays, it is useful to use enumerable methods to iterate over them. Also, it's also good to keep in mind that when working with nested arrays, you can line break them to make your sight of them easier on the eyes. For example:

  # ["Hello", "Hi", ["this"], "is", {"a" => ["nested_array"]}, "ey?"]

  # or you can make it easier to read for yourself and others by doing it this way:

  # [
  # "Hello",
  # "Hi",
  # ["this"],
  # "is",
  # { "a" => [ "nested_array" ] },
  # "ey?"
  # ]

  # This will help you in the long run when trying to figure things out in terms of where elements are and how to access them.

# What are some ways you can iterate over nested arrays?

  # - One way you could iterate over nested arrays is using an each loop. Another way is building a separate loop method you can call in your main method when you have to keep looping through multiple levels of arrays. Another way you can iterate through them is by flattening them into a single array, provided that the rest of your code won't break from that.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

  # - I know about the method but haven't used it yet in phase 0. The is_a? method. Simple but it's useful to check the kind of object something is within a conditional statement. Aside from that, the each method which we used countless times already was our go-to choice here. We used it because it gives us the freedom to go through each element in an array also using an index, allowing us to modify that original array. We also built our own method that we called on to simplify our main method of looping through multiple levels of arrays.