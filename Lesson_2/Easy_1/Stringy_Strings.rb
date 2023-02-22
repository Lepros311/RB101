# Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

def stringy(num)
  i = 0
  str = ''
  while i < num 
    if i % 2 == 0
      str += '1'
      i += 1
    else 
      str += '0'
      i += 1
    end
  end
  str
end

puts stringy(1) == '1'
puts stringy(2) == '10'
puts stringy(3) == '101'

puts stringy(1)
puts stringy(2) 
puts stringy(3)

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'