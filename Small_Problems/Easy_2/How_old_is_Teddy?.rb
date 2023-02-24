# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

print "Enter a name: "
name = gets.chomp


age = rand(20..200)

if name == ''
  puts "Teddy is #{age} years old!"
  else
    puts "#{name} is #{age} years old!"
end