# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

# A running total is the sum of all values in a list up to and including the current element. Thus, the running total when looking at index 2 of the array [14, 11, 7, 15, 20] is 32 (14 + 11 + 7), while the running total at index 3 is 47 (14 + 11 + 7 + 15).

=begin
Problem
  Input - an array
  Output - an array of running totals

DS
  Array

Algorithm
  - Append the first integer to the new array
  - Add together the last integer in the new array, and the next integer in the original array
  - Repeat until all integers have been added
=end

def is_empty?(array_of_integers)
  array_of_integers.empty?
end


def running_total(array_of_integers)
  if is_empty?(array_of_integers) == false
    counter = 1
    totals = [array_of_integers[0]]
    loop do
      break if counter == array_of_integers.size
      totals << (totals.last + array_of_integers[counter])
      counter += 1
    end
  else 
    totals = []
  end

  totals
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []