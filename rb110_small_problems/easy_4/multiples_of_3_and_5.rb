# Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

=begin
Problem
  Input - an integer
  Output - an integer
Data structure
  Array
Algorithm
  - Calculate all the numbers that are multiples of 3 between 0 and the integer
  - Calculate all the numbers that are multiples of 5 between 0 and the integer
  - Retrieve those numbers and add them to an array
  - Add them all together and return them
=end

def multisum(num)
  # arr = (0..num).select do |n|
  #   n % 3 == 0 || n % 5 == 0
  # end

  # arr.reduce(:+)

  arr = (0..num).select{|n| n % 3 == 0 || n % 5 == 0}.reduce(:+)

end


p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168