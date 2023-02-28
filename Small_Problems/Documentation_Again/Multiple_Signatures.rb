# What do each of these puts statements output?

# a = %w(a b c d e)
# puts a.fetch(7)
# puts a.fetch(7, 'beats me')
# puts a.fetch(7) { |index| index**2 }  

# 'out of bounds'
# 'beats me'
# 49

# The documentation for Array#fetch has the signature:

#     fetch(index) → obj
#     fetch(index, default) → obj
#     fetch(index) { |index| block } → obj

# This shows that #fetch can be called with an index argument, an index and a default argument, or an index argument and a block. Note in particular that having multiple lines in the signature is yet another way in which the ruby documentation indicates that an argument is optional. In this case, both default and the block are optional arguments, but they can't be used together.

# Reading the documentation, we see that #fetch simply returns the element of an Array by its index, but it also does bounds checking (which Array#[] does not); that is, it checks whether the specified element actually exists before fetching it, and raises an error if it does not exist. The second and third forms of #fetch prevent an error from occurring if the indicated element does not exist by providing a default value or a block that returns an appropriate value.