# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [1] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Step 1: Create a few variables. One for a random number and one for the letters of BINGO.
# Step 2: Go through every column and number in the board.
# Step 3: Place an X in the numbers place if the column and number match up.
# Step 4: Print out the board with with an X if there is a match, otherwise just print the board.

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  # def letter_generator
  #   letters = ["B", "I", "N", "G", "O"]
  #   return letters.sample
  # end

  # def number_generator
  #   random_number = rand(1..100)
  #   random_number
  # end

  # Or both in one

  # def char_num_generator
  #   char_num = []
  #   letters = ["B", "I", "N", "G", "O"]
  #   random_number = rand(1..100)

  #   char_num << letters.sample
  #   char_num << random_number

  #   return char_num
  # end

# Check the called column for the number called.
  # board.each_with_index do |row, idx|
  #   if char_num[0] == "b"
  #     if row[0] == char_num[1]
  #       board[idx][0] = "X"
  #     end
  #   else
  #     Repeat similar logic for each letter
  #   end
  # end

# If the number is in the column, replace with an 'x'
  # I put this together with the last one

# Display a column to the console
  # def display
  #   board.each do |row|
  #     row.each do |number|
  #       print "#{number} "
  #     end
  #   end
  # end

# Display the board to the console (prettily)
  # def display
  #   puts "=================="
  #   puts "Welcome To Bingo"
  #   puts "=================="
  #   puts
  #   board.each do |row|
  #     row.each do |number|
  #       print "#{number} |"
  #     end
  #   end
  # end

# Initial Solution
# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @random_num = rand(1..100)
#     @random_letters = ["B", "I", "N", "G", "O"]
#     puts "WELCOME TO BINGO!"
#     puts ""
#   end

#   def check(letter = @random_letters.sample, number = @random_num)
#     @bingo_board.each_with_index do |num_arr,idx|
#       if letter.downcase == "b"
#         if num_arr[0] == number
#           @bingo_board[idx][0] = "X"
#         end
#       elsif letter.downcase == "i"
#         if num_arr[1] == number
#           @bingo_board[idx][1] = "X"
#         end
#       elsif letter.downcase == "n"
#         if num_arr[2] == number
#           @bingo_board[idx][2] = "X"
#         end
#       elsif letter.downcase == "g"
#         if num_arr[3] == number
#           @bingo_board[idx][3] = "X"
#         end
#       elsif letter.downcase == "o"
#         if num_arr[4] == number
#           @bingo_board[idx][4] = "X"
#         end
#       else
#         raise ArgumentError.new("Sorry we did not recognize your entry to be valid. Please make a new entry!")
#       end
#     end
#   end

#   def display
#     puts "=================="
#     puts "  BINGO RESULTS"
#     puts "=================="
#     puts
#     puts "Step 1: Look For The Letter You Chose"
#     puts "Step 2: Then Look Down The Column And See If You Hit Bingo!"
#     puts "Step 3: Have Fun!"
#     puts

#     puts " B  | I  | N  | G  | O  |"
#     puts
#     @bingo_board.each do |num_arr|
#       num_arr.each do |number|
#         if number.to_s.length == 1
#           print " #{number}  |"
#         else
#           print " #{number} |"
#         end
#       end
#       puts ""
#     end
#   end
# end

# Refactored Solution
class BingoBoard

  def initialize
    @letters = ["B", "I", "N", "G", "O"]
    @bingo_board = []
  end

  def call
    @random_letter = @letters.index(@letters.sample)
    @random_num = rand(1..100)
  end

  def create_legal
    idx = 0
    start = 15

    5.times do
      row = (start - 14..start).to_a.shuffle.sample(5)
      @bingo_board[ idx ] = Array.new(row)
      start += 15
      idx += 1
    end
    return @bingo_board
  end

  def create_free
    idx = 0

    5.times do
      row = (1..99).to_a.shuffle.sample(5)
      @bingo_board[ idx ] = Array.new(row)
      idx += 1
    end
  end


  def check_not_legal
    @bingo_board.each_with_index do |row,idx|
      if row[ @random_letter ] == @random_num
        @bingo_board[ idx ][ @random_letter ] = "X"
      end
    end
  end

  def check_legal
    @bingo_board.each_with_index do |row,idx|
      if row[ @random_letter ] == @random_num
        @bingo_board[ idx ][ @random_letter ] = "X"
      end
    end
  end

  def display
    puts "Loading Results"
    sleep 0.8

    15.times do
      print "."
      sleep 0.1
    end

    puts
    puts
    puts "=================="
    sleep 0.1
    puts "  BINGO RESULTS"
    sleep 0.1
    puts "=================="
    sleep 0.1
    puts
    puts "Step 1: Look For The Letter You Chose"
    sleep 0.1
    puts "Step 2: Then Look Down The Column And See If You Hit Bingo!"
    sleep 0.1
    puts "Step 3: Play Again!"
    sleep 0.1
    puts

    puts " B  | I  | N  | G  | O  |"
    puts
    sleep 0.2
    @bingo_board.each do |row|
      row.each do |number|
        if number.to_s.length == 1; print " #{number}  |"
        else; print " #{number} |"
        end
      end
      sleep 0.3
      puts ""
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE

puts "WELCOME TO BINGO!"

sleep 0.7

puts "LOADING UP. DO NOT GRAB A COFFEE, THIS WILL BE QUICK!"

15.times do
  print "."
  sleep 0.1
end

def user_input
  puts
  puts "Would you like to play legal bingo or free numbers bingo? Please type either legal or free and hit return: "
  user_input = gets.chomp.downcase

  if user_input != "legal" || user_input != "free"
    until user_input == "legal" || user_input == "free"
      puts "Sorry you didn't give a valid response. Please type either legal or free and hit return: "
      user_input = gets.chomp.downcase
    end
  end
  user_input
end

if user_input == "legal"
  new_game = BingoBoard.new
  new_game.create_legal
  new_game.call
  new_game.check_legal
  new_game.display
else
  new_game = BingoBoard.new
  new_game.create_free
  new_game.call
  new_game.check_not_legal
  new_game.display
end


#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  # - Pseudocoding was EXTREMELY hard for me. I always have a tough time pseudocoding but this challenge was hard to pseudocode. My mind just works better when I'm in the code. I know I have to get better at pseudocoding. My style is horrible with it. I am doing my best to get bettet at it but I do know the material.

# What are the benefits of using a class for this challenge?

  # - By using a class on this challenge, you are able to create many instances of this game. You can re-play it over and over again as much as you'd like. Using methods would make this more complicated simply because you would have to call each method and I actually don't even know how I would make it work with just simply methods. You need a class to make this run smoothly.

# How can you access coordinates in a nested array?

  # - There are many ways to access coordinates. I think the simplest way is to use an each loop but you can use a "for" loop or map. Plenty of ways. I used each and I think all Ruby lovers are lovers of the each method.

# What methods did you use to access and modify the array?

  # - I used the each_with_index, each_index, and each methods to modify the array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

  # - I learned the if one line method using the keyword "then" and also I learned sleep. I don't consider the one line if statement to be anything new for me as I just didn't know you can replace ";" with "then" but the sleep method was really helpful in making my results come out nice. The sleep method basically stops your program for just a short period before continuing on with the next thing. This was useful in creating a more interactive user experience from the start of running the program to printing out the results and all.

# How did you determine what should be an instance variable versus a local variable?

  # - I only had 3 instance variables I created and all of them were created in the initialize method. The board was automatically there from the start but if it wasn't I would have placed it there anyway. The other two instance variables I created were @random_letters and @random_num. The reason why I made these was so I can have them initialized with each instance of this class as opposed to having them created in a method where I need to pass these variables into.

# What do you feel is most improved in your refactored solution?

  # - My refactored solution definitely works better with checking a "true bingo board" versus the one that is originally given. Also, the new solution is much improved with displaying the results.