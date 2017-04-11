# In some countries of the former Soviet Union there was a belief about lucky tickets. A transport ticket of any sort was believed to possess luck if sum of digits on the left half of its number was equal to the sum of digits on the right half.

def luck_check(str)
  length = str.length - 1
  half = str.length / 2
  # return length, half

  first_half_total = 0
  second_half_total = 0


  first_half = str[0,half]
  second_half = str[-(half),half]

  first_half = first_half.split(//)
  second_half = second_half.split(//)

  first_half.each do |num|
    first_half_total += num.to_i
  end

  second_half.each do |num|
    second_half_total += num.to_i
  end

  if first_half_total == second_half_total
    return "WOoHoO iTs LuCkY"
  else
    return "lol nope"
  end

end

puts luck_check("003111") # 3 = 1 + 1 + 1
puts luck_check("813372") # 8 + 1 + 3 = 3 + 7 + 2
puts luck_check("17935") # 1 + 7 = 3 + 5
puts luck_check("56328116")
puts luck_check("123789")
