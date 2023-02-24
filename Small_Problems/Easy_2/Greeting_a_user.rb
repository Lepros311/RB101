# Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

def prompt(message)
  print "==>#{message}"
end

prompt("What is your name? ")
name = gets.chomp

name[name.size-1] == "!" ? (puts "HELLO #{name.chop.upcase}. WHY ARE WE SCREAMING?") : (puts "Hello #{name}.")
# name[-1]