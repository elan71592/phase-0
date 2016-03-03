def name
  puts "Hello there! What is your first name? "
  first_name = gets.strip.capitalize

  puts "Great! What is your middle name? If you do not have one, just hit enter: "
  middle_name = gets.strip.capitalize

  puts "Awesome! Now how about your last name? "
  last_name = gets.strip.capitalize

  if middle_name.length > 1
    puts "Hi #{first_name} #{middle_name} #{last_name}! It is nice to meet you!"
  elsif middle_name.length == 1
    puts "Hi #{first_name} #{middle_name}. #{last_name}! It is nice to meet you!"
  else
    puts "Hi #{first_name} #{last_name}! It is nice to meet you!"
  end
end

name

def number
  puts "What is your favorite number? "
  number = gets.strip.to_i

  puts "I think that #{number + 1} is a bigger and better number!"
end

number