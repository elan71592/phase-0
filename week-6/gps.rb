# Your Names
# 1) Elan
# 2) Ena

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(food, serving)
  foods = {
    "cookie" => 1,
    "cake" =>  5,
    "pie" => 7
  }

  unless foods.has_key?(food)
    raise ArgumentError.new("#{food} is not a valid input")
  end

  serving_size = foods[food]
  people_left = serving % serving_size

  case people_left
  when 0
    "Calculations complete: Make #{serving / serving_size} of #{food}"
  else
    "Calculations complete: Make #{(serving / serving_size) + 1} of #{food}, you have #{serving_size - people_left} leftover servings."
  end
end

p serving_size_calc("pie", 72)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)



#  Reflection

# What did you learn about making code readable by working on this challenge?

  # - I learned that reading others code can be difficult and stressful but at the same time it taught me that it is extremely important about writing my own code to be easily read by others.

# Did you learn any new methods? What did you learn about them?

  # - I haven't learned any new methods here however it was nice to see a case statement in practice.

# What did you learn about accessing data in hashes?

  # - I didn't learn anything extra apart from the other challenges in DBC that taught me how to access data in hashes.

# What concepts were solidified when working through this challenge?

  # - WRITE EASY TO READ CODE haha!