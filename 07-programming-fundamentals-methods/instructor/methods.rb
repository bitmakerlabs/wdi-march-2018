def hello(name)
  puts "Hello #{name}"
  return 'Thanks for calling!'
end

greeting_val = hello('Jack')


def give_me_something
  bottle = "A Green Water Bottle"
  cup = "Dirty Coffee Cup"
  marker = 'Green Marker'

  return bottle
end

returned_value = give_me_something



number_of_cats = 20
number_of_dogs = 35

def sum(first, second)
  if first < 0
    return 'first must be positive'
  end
  if second < 0
    return 'Second arg is negative!'
  end

  total = first + second
  puts 'Hey thanks for using sum.'
  return total
end

total_animals = sum(number_of_cats, number_of_dogs)
puts total_animals
