# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

def prompt(message)
  print "==>#{message}"
end

prompt("Please write word or multiple words: ")
words = gets.chomp

num_chars = words.strip.size

puts "There are #{num_chars} characters in \"#{words}\"."