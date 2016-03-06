# Factorial

# I worked on this challenge with Ena.

# Your Solution Below

def factorial(number)
  result = 1
  counter = number

  if number == 0 || number == 1
    return 1
  else
    while counter != 1
      result *= counter
      counter -= 1
    end
  end
  result
end