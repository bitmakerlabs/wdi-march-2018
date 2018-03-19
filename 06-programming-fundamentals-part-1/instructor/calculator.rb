puts "first number:"
first_number = gets.chomp.to_f

puts "second number:"
second_number = gets.chomp.to_f

puts "operation (+, -, *, or /)"
operator = gets.chomp

if operator == "+"
  puts first_number + second_number
elsif operator == "-"
  puts first_number - second_number
elsif operator == "*"
  puts first_number * second_number
elsif operator == "/"
  puts first_number / second_number
else
  puts "not a valid operation"
end



