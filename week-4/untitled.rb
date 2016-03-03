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