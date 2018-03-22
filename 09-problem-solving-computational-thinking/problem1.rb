# Problem: Get the total sum of a list of numbers
# 1 2 5 11 1

# go through the list of numbers
# each time add the number to a total
# return the total

specific_numbers = [1,2,5,11,1]

def get_total(numbers)
  total = 0

  numbers.each do |num|
    total = total + num
  end
  return total
end

puts get_total(specific_numbers)
puts get_total([1,4,5,6,7])