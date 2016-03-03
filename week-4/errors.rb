# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
    break
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#    - errors.rb
# 2. What is the line number where the error occurs?
#    - 16
# 3. What is the type of error message?
#    - keyword: expecting end
# 4. What additional information does the interpreter provide about this type of error?
#    - It is self explanitory. There is an end missing somewhere.
# 5. Where is the error in the code?
#    - The while loop was missing an end statement.
# 6. Why did the interpreter give you this error?
#    - Because it was missing an end statement.

# --- error -------------------------------------------------------

south_park = "south park"

# 1. What is the line number where the error occurs?
#   - 37
# 2. What is the type of error message?
#   - undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
#   - It tells us that it is unable to process this because it is not a variable nor a method.
# 4. Where is the error in the code?
#   - line 37 where it acts as if south_park is being called on as a method
# 5. Why did the interpreter give you this error?
#   - There is no method called south_park so it must either be created or made an acceptable variable.

# --- error -------------------------------------------------------

cartman_hates(south_park)

# 1. What is the line number where the error occurs?
#   - 52
# 2. What is the type of error message?
#   - wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
#   - It gives us what line the method is on and where we are calling it which has the issue.
# 4. Where is the error in the code?
#   - The error is in the amount of arguments being passed in. We must add an argument to the cartman_hates method we are calling on line 52.
# 5. Why did the interpreter give you this error?
#   - It is unable to compute a task if it requires an argument or if it isn't give a default argument.

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#   - 67
# 2. What is the type of error message?
#   - wrong number of arguments. 1 for 0
# 3. What additional information does the interpreter provide about this type of error?
#   - It gives us info on the line where the issue is and also that there's too many arguments being passed in.
# 4. Where is the error in the code?
#   - The error is on line 67 where we have to add an argument to the method so that line 71 calls the method passing it a string.
# 5. Why did the interpreter give you this error?
#   - It can't pass a string to the method if the method doesn't have any arguments to accept it.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("I hate you")

# 1. What is the line number where the error occurs?
#   - 90
# 2. What is the type of error message?
#   - wrong number arguments. 0 for 1
# 3. What additional information does the interpreter provide about this type of error?
#   - It gives us info on the line where the issue is and also that there's no arguments being passed in.
# 4. Where is the error in the code?
#   - The error is on line 90 where we have to add an argument to the method so that the method called gets passed a string as an argument.
# 5. Why did the interpreter give you this error?
#   - It can't call the method since the method requires an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth', 'is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#   - 111
# 2. What is the type of error message?
#   - wrong number arguments. 1 for 2
# 3. What additional information does the interpreter provide about this type of error?
#   - We only passed in one argument when it requires 2.
# 4. Where is the error in the code?
#   - The error is in the argument being passed on line 111.
# 5. Why did the interpreter give you this error?
#   - It needs a second argument.

# --- error -------------------------------------------------------

5.times do
  puts "Respect my authoritay!"
end

# 1. What is the line number where the error occurs?
#   - 126
# 2. What is the type of error message?
#   - string can't be coerced into fixnum
# 3. What additional information does the interpreter provide about this type of error?
#   - It tells us that you can't multiply a string by a number.
# 4. Where is the error in the code?
#   - the error is on line 126 where there is a * for multiply.
# 5. Why did the interpreter give you this error?
#   - it is unable to multiply a number by a string unless the string is converted to a number. Here i fixed it to make it just puts out the string 5 times.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0.0


# 1. What is the line number where the error occurs?
#   - 143
# 2. What is the type of error message?
#   - ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
#   - divided by 0 is the issue
# 4. Where is the error in the code?
#   - line 143 where 20 is being divided by 0
# 5. Why did the interpreter give you this error?
#   - You are unable to divide by 0 however if you make it a float, 0.0, you can divide.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#   - 159
# 2. What is the type of error message?
#   - cannot load such file
# 3. What additional information does the interpreter provide about this type of error?
#   - that this file either cannot be loaded because it can't be found or because it is not linked to the proper file/path.
# 4. Where is the error in the code?
#   - line 159 Load Error
# 5. Why did the interpreter give you this error?
#   - If the file is non-existent, the file is not possible to be loaded.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?

#  - None of them since I already know how to read these errors.

#How did you figure out what the issue with the error was?

#  - Terminal makes it easy to understand where to look for the error.

#Were you able to determine why each error message happened based on the code?

#  - Yes very easily.

#When you encounter errors in your future code, what process will you follow to help you debug?

#  - Look for where the error is telling me it is happenning in terms of line number. And then view the code line by line to see where there is an error.