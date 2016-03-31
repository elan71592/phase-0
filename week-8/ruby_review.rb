# Cipher Challenge

# I worked on this challenge by myself
# I spent [1] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.

          # this is taking a string, converting all letters to lowercase, and then creating an array with each character as it's own element in the array

#   decoded_sentence = []

#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}


            # I think there is a much simpler way to do this and a hash is not necessary here. It is not the best structure in my opinion. A hash is good for a list but in this case we know that regardless of what we have, hash or array, the number of letters in the alphabet is still going to be 26. We can use this to our advantage to automatically populate two arrays with what we need. An array from A to Z and another array with the shift of characters for comparison. Super easy to do.

#   input.each do |x|
#     found_match = false
#     cipher.each_key do |y|
#       if x == y
#         decoded_sentence << cipher[y]
#         found_match = true
#         break
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?

                # This is not DRY. It is repeating a process that can be simplified into one condition as opposed to a bunch of them. If we know that these are the particular characters that are supposed to be exempt and produce a string with just a space, then we can create a variable and set it to a string that contains these characters. Then we can just call inculde? on that variable to check if the character matches any of these exempt symbol characters.

#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x)
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
# end

# Your Refactored Solution


def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("")
  decoded_sentence = []
  alphabet = ("a".."z").to_a
  cipher = ("e".."z").to_a.concat( ("a".."d").to_a )
  exemptChars = "@#$%^&*"

  input.each do |char|
    if alphabet.include?( char )
      decoded_sentence << alphabet[ cipher.index(char) ]
    elsif (0..9).to_a.include?(char) || exemptChars.include?(char) == false
      decoded_sentence << char
    elsif exemptChars.include?(char)
      decoded_sentence << " "
    end
  end
  decoded_sentence.join("")
end


# This was my attempt at creating this same challenge in an object oriented way. The letter converter will be able to handle any number put into it but the message being passed in still needs to be decoded by a particular number. For instance, if you pass in 10, it will work and it will shift but it won't produce the right output for this challenge. I struggled trying to figure that out but the only way to get this passing here is to plugin the number 4. Other than that, everything else works great!

class Cipher

  def initialize(coded_message)
    @coded_message = coded_message.downcase.split("")
    @decoded_message = []
    @exemptChars = "@#$%^&*"
  end

  def letter_converter(num)
    @alphabet = ("a".."z").to_a
    @cipher = (@alphabet[ num ].."z" ).to_a.concat( ("a"..@alphabet[ num - 1 ] ).to_a )
  end

  def decode_message
    @coded_message.each do |char|
      if @alphabet.include?( char )
        @decoded_message << @alphabet[ @cipher.index(char) ]
      elsif (0..9).to_a.include?(char) || @exemptChars.include?(char) == false
        @decoded_message << char
      elsif @exemptChars.include?(char)
        @decoded_message << " "
      end
    end
  end

  def print
    p @decoded_message.join("")
  end

end

message = Cipher.new("m^aerx%e&gsoi!")
message.letter_converter(4)
message.decode_message
message.print



# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")




#########################################################
#########################################################
#########################################################
#########################################################
#########################################################






def is_fibonacci?(num)
  lastNumber = 0
  thisNumber = 1
  result = false

  while lastNumber <= num
    if lastNumber == num
      result = true
    end

    thisNumber += lastNumber
    lastNumber = thisNumber - lastNumber
  end
  return result
end




#########################################################
#########################################################
#########################################################
#########################################################
#########################################################






def super_fizzbuzz(array)
  result = []
  array.each do |number|
    if number % 15 == 0
      result << "FizzBuzz"
    elsif number % 5 == 0
      result << "Buzz"
    elsif number % 3 == 0
      result << "Fizz"
    else
      result << number
    end
  end
  result
end






#########################################################
#########################################################
#########################################################
#########################################################
#########################################################







# PezDispenser Class from User Stories

# I worked on this challenge by myself.
# I spent [0.5] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
# Step 1: Create initialize method which will start off each Pez Dispenser we make with some flavors
# Step 2: Create a count method to check how many Pez are in the Pez Dispenser
# Step 3: Create a take method so I can take a delicious Pez from the Dispenser
# Step 4: Create an add method so I can put another Pez into the dispenser
# Step 5: Create a show method so I can see all Pez's flavors left in the order they are in


# Initial Solution

# class PezDispenser

#   def initialize(flavors)
#     @flavors = flavors
#   end

#   def pez_count
#     @flavors.count
#   end

#   def get_pez
#     @flavors.shift
#   end

#   def add_pez(flavor)
#     @flavors.push(flavor)
#   end

#   def see_all_pez
#     @flavors
#   end
# end



# Refactored Solution

class PezDispenser

  def initialize(flavors)
    @flavors = flavors
  end

  def pez_count
    @flavors.count
  end

  def get_pez
    @flavors.shift
  end

  def add_pez(flavor)
    @flavors.push(flavor)
  end

  def see_all_pez
    @flavors
  end
end



# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a banana pez."
super_mario.add_pez("banana")
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"




#########################################################
#########################################################
#########################################################
#########################################################
#########################################################





# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me [3] hours.


# Pseudocode



def numToWords(num)
  split_numbers = num.to_s.reverse.chars.each_slice(3).to_a

  parts = []
  suffixes = ["", "thousand", "million", "billion", "trillion"]
  word = ""

  split_numbers.each_with_index do |arr, idx|
    parts << suffixes[idx]
    get_word(arr, parts)
  end

  parts = parts.reverse.join(" ")

  word = capitalize_words(parts)
  p word
end

def capitalize_words(words)
  result = []
  split_words = words.split(" ")

  split_words.each do | word |
    if word != "" || word != " "
      result << word.capitalize
    end
  end
  result.join(" ")
end


def get_word( array, parts )
  digits = {
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine"
  }

  teens = {
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eighteen",
  19 => "nineteen"
  }

  decades = {
  10 => "ten",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety"
  }

array.each_with_index do |number, idx|
  case idx + 1
    when 1
      if number != '0'
        parts << digits[ number.to_i ]
      end
    when 2
      if number == '1'
        teen_number = number + split_numbers[ idx - 1 ]
        parts.pop
        parts << teens[ teen_number.to_i ]
      else
        decade_number = number + '0'
        parts << decades[ decade_number.to_i ]
      end
    when 3
      if number != '0'
        parts << digits[ number.to_i ] + ' hundred'
      end
    end
  end
end

numToWords(346728)




#########################################################
#########################################################
#########################################################
#########################################################
#########################################################




# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [0.5] hours.

# Pseudocode



# Initial Solution
# def reverse_words(string)
#   space = " "
#   result = []
#   if not string.empty?
#     each_word = %W(#{string})
#     each_word.each do |word|
#       if word.include?(space)
#         word_split = word.split(" ")
#         word_split.each { |word| result << word.reverse}
#       else
#         result << word.reverse
#       end
#     end
#   else
#     return string
#   end
#   result.join(" ")
# end


# Refactored Solution

def reverse_words(string)
  result = []
  each_word = %W(#{string})

  for word in each_word do
    if word.include?(" ")
      word.split(" ").each { |word| result << word.reverse }
    else
      result << word.reverse
    end
  end
  result.join(" ")
end




# Reflection


