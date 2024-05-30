=begin

Write a method that takes a year as input and returns the century. The return value should be a string that begins with the century number, and ends with st, nd, rd, or th as appropriate for that number.

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Need to figure out:
- how to decide which year corresponds to which century
    - in most cases, third digit from end plus digits to the left set the century (so use negative indices and a range?)
    - this doesn't work for the last year of a century
    - some years only have 1 or 2 digits - need to add 0s?
- which centuries take which endings, and then how to add the ending to the number
    - use an if statement?


=end

def century(year)
  century = year / 100
  p century
  century -= 1 if year % 100 == 0
  century.to_s + century_suffix(century)
end

def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

  case last_digit
  when 1 then 'st'
  when 2 then 'nd'
  when 3 then 'rd'
  else 'th'
  end
end

# p century(2000) == '20th'
# p century(2001) == '21st'
# p century(1965) == '20th'
# p century(256) == '3rd'
century(5) # == '1st'
# p century(10103) == '102nd'
# p century(1052) == '11th'
# p century(1127) == '12th'
# p century(11201) == '113th'

def century(year)
  if year < 100
    the_century = 1
  elsif (year % 100) == 0
    the_century = (year / 100)
  else
    the_century = (year / 100) + 1
  end

  the_century = the_century.to_s

  penultimate_char = the_century[-2]
  last_char = the_century[-1]

  if penultimate_char != "1"

    if last_char == "1"
      the_century += "st"
    elsif last_char == "2"
      the_century += "nd"
    elsif last_char == "3"
      the_century += "rd"
    else
      the_century += "th"
    end

  else
    the_century += "th"
  end


  if the_century[-2] != "1"

    if the_century[-1] == "1"
      the_century += "st"
    elsif the_century[-1] == "2"
      the_century += "nd"
    elsif the_century[-1] == "3"
      the_century += "rd"
    else
      the_century += "th"
    end

  else
    the_century += "th"
  end

  if the_century[-2] != "1" && the_century[-1] == "1"
    the_century = the_century + "st"
  elsif the_century[-2] != "1" && the_century[-1] == "2"
    the_century = the_century + "nd"
  elsif the_century[-2] != "1" && the_century[-1] == "3"
    the_century = the_century + "rd"
  else
    the_century = the_century + "th"
  end

end




# def add_digits(y)
#   y = y.to_s
#   if y.size < 3
#     counter = 0
#     loop do 
#       y = "0" + y
#       break if y.size == 4
#     end
#   end
#   y
# end


# def century(year)
#   year_string = add_digits(year)
#   p year_string

  # year = year.to_s
  # last_two_characters = year.slice(-2..-1)

  # if year.size < 3
  #   the_century = "1"
  # elsif last_two_characters == "00"
  #   the_century = year.slice(0..-3)
  # else
  #   the_century_minus_one = year.slice(0..-3).to_i
  #   the_century = (the_century_minus_one + 1).to_s
  # end
  # p the_century

  # if the_century[-2] != "1" # if the 1st char is not 1
  #   case the_century[-2] != "1" 
  #     when the_century[-1] == "0" then the_century += "th"
  #     when the_century[-1] == "1" then the_century += "st" # and the 2nd car is 1
  #     when the_century[-1] == "2" then the_century += "nd"
  #     when the_century[-1] == "3" then the_century += "rd"
  #   end
  #   p the_century
  # else
  #   the_century += "th"
  #   p the_century
  # end

  # first_char = the_century[0]
  # p first_char
  # second_char = the_century[1]
  # p second_char

  # if first_char == "1" 

  #   if second_char == "1"
  #     the_century += "st"
  #   elsif second_char == "2"
  #     the_century += "nd"
  #   elsif second_char == "3"
  #     the_century += "rd"
  #   end

  # else
  #   the_century += "th"
  # end


  
  # if the_century[-2] != "1" && the_century[-1] == "1"
  #   the_century = the_century + "st"
  # elsif the_century[-2] != "1" && the_century[-1] == "2"
  #   the_century = the_century + "nd"
  # elsif the_century[-2] != "1" && the_century[-1] == "3"
  #   the_century = the_century + "rd"
  # else
  #   the_century = the_century + "th"
  # end

# end

# century(34786)



# x = "hello"

# sl = x.slice!(-1..0)
# p sl
# p x

# string = "example"
# last_two_characters = string.slice(-2..-1)
# puts last_two_characters  # Output: "le"
# puts string