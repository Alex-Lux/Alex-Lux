require_relative 'shop'
# interface.rb
# Pseudo-code:
# Define the user_list as a empty Hash
user_list = {  car: true }
list = []
# 1. Welcome
puts "Welcome to our Christmas giftlist"
puts "-------------------------------------------------------------------"
user_answer = ''

until user_answer == 'quit'
  # 2. Display menu (list / add / delete / mark / quit) - begin to loop
  puts "Choose an action : list, add, delete, quit, idea"
  # 3. Get user action
  user_answer = gets.chomp
  # 4. Perform the right action (if elsif case)
  # for each action call the method from shop
case user_answer
  when "list"
    list(user_list)
  when "add"
    user_list = add(user_list)
  when "delete"
    delete(user_list)
  when "idea"
    idea(user_list)
  else
    "Invalid action"
  end
end



p user_list

