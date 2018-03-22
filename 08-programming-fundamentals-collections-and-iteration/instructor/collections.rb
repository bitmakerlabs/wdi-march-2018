5.times do |foobar|
  puts "Hello #{foobar}"
end

equivalent to...
[0, 1, 2, 3, 4].each do |foobar|
  puts "Hello #{foobar}"
end

breakfast = ['eggs', 'bacon', 'toast', 'coffee']
return_val = breakfast.each do |food|
  puts "Matt hastily consumes #{food}"
end

puts return_val

breakfast = ['eggs', 'bacon', 'toast', 'coffee']
return_val = breakfast.map do |food|
  "Matt hastily consumes #{food}"
end

puts return_val.inspect

car = {year: 2008, make: 'honda', model: 'civic'}
car.each do |key, value|
  puts "This time, key was #{key}"
  puts "This time, value was #{value}"
  puts "The car has a #{key} of #{value}"
  puts ""
end
