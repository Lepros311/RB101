# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# def stringy(num, start = 1)
#   i = 0
#   str = ''
#   if start == 1
#     while i < num 
#       if i % 2 == 0
#         str += '1'
#       else
#         str += '0'
#       end
#     end
#   else
#     while i < num 
#       if i % 2 == 0
#         str += '0'
#       else
#         str += '1'
#       end
#     end
#     i += 1
#   end
#   str
# end

# puts stringy(1) == '1'
# puts stringy(2) == '10'
# puts stringy(3) == '101'

# puts stringy(1)
# puts stringy(2) 
# puts stringy(3)

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# puts stringy(6, 0) == '010101'

def stringy(size, start = 1)
  numbers = []

  if start == 1
    size.times do |index|
      number = index.even? ? 1 : 0
      numbers << number
    end
  else 
    size.times do |index|
      number = index.even? ? 0 : 1
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6,0)