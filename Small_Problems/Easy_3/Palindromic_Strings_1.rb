# Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

def palindrome?(str)
  str == str.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')        # (case matters)
puts palindrome?("madam i'm adam")  # (all characters matter)
puts palindrome?('356653')

def arr_pal?(arr)
  arr.to_s == arr.to_s.reverse
end

puts arr_pal?([5, 3, 5])

arr = [1, 2, 3, 4]
puts arr.split(//)