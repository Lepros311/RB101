# Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers: addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.

def prompt(message)
  print "==>#{message}"
end

prompt("Enter the first number: ")
first = gets.chomp.to_i

prompt("Enter the second number: ")
second = gets.chomp.to_i

sum = first + second
puts "#{first} + #{second} = #{sum}"

difference = first - second
puts "#{first} - #{second} = #{difference}"

product = first * second
puts "#{first} * #{second} = #{product}"

quotient = first / second
puts "#{first} / #{second} = #{quotient}"

remainder = first % second
puts "#{first} % #{second} = #{remainder}"

power = first ** second
puts "#{first} ** #{second} = #{power}"

