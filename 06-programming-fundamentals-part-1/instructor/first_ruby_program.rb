# puts "What's your name?"

# now I'm going to ask the user for their name
# user_name = gets.chomp
#
# puts "Hi, \"#{user_name}\""
# puts 'Hi "you"'
# puts "Hi 'you'"

puts "Enter password:"

user_password = gets.chomp

while user_password.length < 10
  puts "Too short"
  user_password = gets.chomp
end

# while true
#   puts "I will never stop"
# end

puts "Great choice"
puts "Very secure"
# puts "What day is it?"
#
# today = gets.chomp
#
# puts "Do you have homework? (yes or no)"
# homework_status = gets.chomp
#
# if today == "Saturday" || today == "Sunday"
#   puts "It's the weekend!"
#
#   if homework_status == "yes"
#     puts "But you have to study"
#   end
#
# end

# if "hi"
#   puts "it's true, I guess"
# end

# counter = 0
#
# while counter < 10
#   puts counter
#   counter = counter + 1
# end
#
# puts "done"
