###What does puts do?

  - puts returns nil and prints out to the console with a new line

###What is an integer? What is a float?

  - An integer is a whole number. A float is a decimal number.

###What is the difference between integers and floats?

  - Integers are whole numbers whereas floats include decimals.

###What is the difference between integer and float division?

  - Integer division will return whole numbers. Floats division will return decimals even if the division is a perfect number.

###What are strings? Why and when would you use them?

  - Strings are a common part of any language. They aren't specific to Ruby. They are very useful for many things. Something we like to use them for is to return something readable to the user as well as ask for user input. Strings allow us to understand the user better and therefore help us as programmers anticipate what a user would answer given the chance for input and therefore allowing us to use conditional statements to carry out certain tasks.

###What are local variables? Why and when would you use them?

  - Local variables are properties we use to store information. They are local to the specific area in the program. For instance, if I have a method and a variable in that method, I can use that variable and manipulate it in my condition logic but if I create a variable within my conditional logic, it is local only to that conditional statement so outside of it, that variabe no longer exists.

###How was this challenge? Did you get a good review of some of the basics?

  - This challenge was very simple. I knew all the basics to ruby already.



```ruby
class Time
  attr_accessor :hours_per_year

  def initialize
    @hours_per_year = 0
    @hours_per_decade = 87600
  end

  def hours(years)
    if years == 1
      puts "Would you like to know how many hours there are in a year or a leap year? Please respond with either \'year\' or \'leap year\' without the quotes."

      answer = gets.strip.downcase

      if answer == "leap year"
        @hours_per_year = 24 * 366
        puts "There are " + @hours_per_year.to_s + " hours in #{years} leap year!"
      elsif answer == "year"
        @hours_per_year = 24 * 365
        puts "There are " + @hours_per_year.to_s + " hours in #{years} year!"
      else
        puts "Sorry, you did not answer with a valid response!"
      end
    else
      @hours_per_year = 24 * 365
      answer = @hours_per_year * years
      puts "There are " + answer.to_s + " hours in #{years} years!"
    end
  end

  def mins(decades)
    minutes = @hours_per_decade * 60
    result = minutes * decades
    puts "There are #{result} minutes in #{decades} decade/s!"
  end
end

Time.new.hours(3)
Time.new.hours(15)
Time.new.hours(10)
Time.new.mins(8)
```