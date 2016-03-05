# Calculate a Grade

# I worked on this challenge with Ena.


# Your Solution Below

def get_grade(grade)
  if grade.to_i >= 90
    return "A"
  elsif grade.to_i >= 80
    return "B"
  elsif grade.to_i >= 70
    return "C"
  elsif grade.to_i >= 60
    return "D"
  else grade.to_i < 60
    return "F"
  end
end