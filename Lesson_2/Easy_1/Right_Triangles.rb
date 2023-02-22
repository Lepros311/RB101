# Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars. The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

def triangle(num)
  i = 1
  loop do
    spaces = num - i
    spaces.times { print " " }
    i.times { print "*" }
    print "\n"
    i += 1
    if i > num
      break
    end
  end
end

triangle(5)
triangle(9)


# LS Solution:
# def triangle(num)
#   spaces = num - 1
#   stars = 1

#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end