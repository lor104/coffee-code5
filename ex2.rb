# Write a function that accepts a string, and returns true if it is in the form of a phone number. Assume that any integer from 0-9 in any of the spots will produce a valid phone number.
#
# Only worry about the following format: (123) 456-7890 (don't forget the space after the close parentheses)



def valid_phone_number(str)
  phone = str.split(//)
  # puts phone
  if phone[0] == "(" && phone[4] == ")" && phone[5] == " " && phone[9] == "-" && phone.length == 14
    phone.delete_at(9)
    phone.delete_at(5)
    phone.delete_at(4)
    phone.delete_at(0)
    phone.each do |num|
      if num.is_a? Integer
      end
      return true
    end
  else
    return false
  end
end



puts valid_phone_number("(123) 456-7890") # => returns true
puts valid_phone_number("(1111)555 2345") # => returns false
puts valid_phone_number("(098) 123 4567") # => returns false
