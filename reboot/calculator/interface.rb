# interface.rb
require_relative 'calculator.rb'
# Pseudo-code (what are the steps in plain english):
# 1. Say hello to the user
puts "Hello, I'm a sexy calculator !!!"
# 2. Ask user for the first number
puts "Please give a first number"
first_number = gets.chomp.to_i
# 3. Get user answer
puts "Please choose a calculator betweem '+', '-', 'x' and '/'"
calculator = gets.chomp
# 4. Ask user for second number
puts "Please give a second number"
second_number = gets.chomp.to_i
# 5. etc.
result = calculation(calculator, first_number, second_number)
puts "The result of your operation is #{result}"
