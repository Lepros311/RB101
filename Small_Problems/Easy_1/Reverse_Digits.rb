# Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

def reverse_digits(num)
  num.to_s.reverse.to_i
end

puts reverse_digits(456)
puts reverse_digits(12345)
puts reverse_digits(12213)
puts reverse_digits(12000)
puts reverse_digits(12003)
puts reverse_digits(1)
