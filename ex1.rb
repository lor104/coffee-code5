# Write a method that accepts an array of 10 integers (between 0 and 9), that returns a string of those numbers in the form of a phone number.

def create_phone_number(a)
  puts "(#{a[0]}#{a[1]}#{a[2]}) #{a[3]}#{a[4]}#{a[5]}-#{a[6]}#{a[7]}#{a[8]}#{a[9]}"
end


create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
# => returns "(123) 456-7890"
