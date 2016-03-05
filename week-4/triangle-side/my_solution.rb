# I worked on this challenge with Ena.


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b < c || b + c < a || a + c < b
    return false
  elsif a == 0 || b == 0 || c ==0
    return false
  elsif a == b && a == c
    return true
  elsif a == b || a == c || b == c
    if a == b && a == c
      return false
    else
      return true
    end
  elsif a > 0 && b > 0 && c > 0
    return true
  else
    return false
  end
end