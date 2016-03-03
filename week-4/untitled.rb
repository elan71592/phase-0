def hours(years)
  hours_per_year = 0
  if years == 1
    puts "Would you like to know how many hours there are in a year or a leap year? Please respond with either \'year\' or \'leap year\' without the quotes."

    answer = gets.strip.downcase

    if answer == "leap year"
      hours_per_year = 24 * 366
      puts hours_per_year * years
    elsif answer == "year"
      hours_per_year = 24 * 365
      puts hours_per_year
    else
      puts "Sorry, you did not answer with a valid response!"
    end
  else
    hours_per_year = 24 * 365
    puts hours_per_year * years
  end
end

hours(3)
hours(1)



