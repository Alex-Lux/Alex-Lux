# interface.rb

# Pseudo-code:
# 1. Print welcome
puts "Hi, let's gamble!!!"

# 2. Get horses array🐴
horses = ['Honest One', 'Dopped One', 'Really Dopped One', 'João Viana']

# print user's options

horses.each_with_index do |horse, index|
  puts "#{index + 1}. #{horse}"
end

# 3. Get user's bet
puts "Choose your horse by the index!"

users_horse = gets.chomp.to_i

# 4. Run the race, pick a random winner 🐴
winner_horse = rand(1..horses.size)

# 5. Check if user won
# 6. Print results
if users_horse == winner_horse
  puts "You win!!!!!!!"
else
  puts "You lost!!!!!"
end

puts "You choose #{horses[users_horse - 1]} and the winner was #{horses[winner_horse - 1]}"
