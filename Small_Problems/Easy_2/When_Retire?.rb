# Build a program that displays when the user will retire and how many years she has to work till retirement.

def prompt(message)
  print "==>#{message}"
end

prompt("What is your age? ")
current_age = gets.chomp.to_i

prompt("At what age would you like to retire? ")
retire_age = gets.chomp.to_i

years_til_retire = retire_age - current_age
retire_year = years_til_retire + Time.now.year

puts "It's #{Time.now.year}. You will retire in #{retire_year}."
puts "You have only #{years_til_retire} years of work to go!"

