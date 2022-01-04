def find(array)
  array.sort!
  sum_of_even = 0
  sum_of_odd = 0

  array.each_with_index do |element, index|
    if index % 2 == 0
      sum_of_even += element
    else
      sum_of_odd += element
    end
  end
  puts sum_of_even - sum_of_odd
end

# find([1, 1, 2, 2, 3, 4, 4]) # => 3
# find([7, 1, 2, 2, 1, 4, 4]) # => 7
# find([1, 8, 3, 1, 3, 5, 5]) # => 8
# find([1, 6, 2, 5, 2, 6, 1]) # => 5
# find([1, 6, 2, 2, 1, 4, 4]) # => 6


arr1 = [1, 1, 2, 2, 3, 4, 4]
arr2 = [7, 1, 2, 2, 1, 4, 4]
arr3 = [1, 8, 3, 1, 3, 5, 5]
arr4 = [1, 6, 2, 5, 2, 6, 1]
arr5 = [1, 6, 2, 2, 1, 4, 4]

# puts arr1.tally.find{|k,v| v == 1}[0]
# puts arr2.tally.find{|k,v| v == 1}[0]
# puts arr3.tally.find{|k,v| v == 1}[0]
# puts arr4.tally.find{|k,v| v == 1}[0]
# puts arr5.tally.find{|k,v| v == 1}[0]


# puts [1, 6, 2, 2, 1, 4, 4].map(&:even?).tally
# [1, 6, 2, 2, 1, 4, 4].tally
# puts [1, 6, 2, 2, 1, 4, 4].reduce(&:^)

puts [1, 1, 2, 2, 3, 4, 4].reduce(&:^) # => 3
puts [7, 1, 2, 2, 1, 4, 4].reduce(&:^) # => 7
puts [1, 8, 3, 1, 3, 5, 5].reduce(&:^) # => 8
puts [1, 6, 2, 5, 2, 6, 1].reduce(&:^) # => 5
puts [1, 6, 2, 2, 1, 4, 4].reduce(&:^) # => 6
