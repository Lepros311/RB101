# Write another method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters. If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.

def palindrome?(str)
  str = str.downcase.delete('^a-z0–9') 
  str == str.reverse
end

puts palindrome?('madam')
puts palindrome?('Madam')           # (case does not matter)
puts palindrome?("Madam, I'm Adam") # (only alphanumerics matter)
puts palindrome?('356653')
puts palindrome?('356a653')
puts palindrome?('123ab321') 