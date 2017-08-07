# interface.rb

# Pseudo-code
# 1. Print Welcome
puts "Welcome to our online shop"
puts "-------------------------------------------------------------"
# 2. Define your store (what items are for sale?)
store = {
  kiwi: {price: 1.25, quantity: 5},
  banana: {price: 0.5, quantity: 4},
  mango: {price: 4, quantity: 1},
  asparagus: {price: 9, quantity: 5}
}

# 3. print store
puts "Please see below our product list"
puts "-------------------------------------------------------------"
store.each do |key, value|
  puts "#{key} at #{value[:price]} and with an available stock of #{value[:quantity]}"
end
puts "-------------------------------------------------------------"
# 4. Get items from the user (shopping)
user_choice = ''
shopping_list = {}

until user_choice == 'Checkout'
   puts "Please choose a product (or Checkout to finalise the transaction)"
   user_choice = gets.chomp

  if user_choice != 'Checkout'
    if store.key?(user_choice.to_sym)
      puts "Please indicate the quantity"
      quantity = gets.chomp.to_i

      if quantity <= store[user_choice.to_sym][:quantity]
      shopping_list[user_choice.to_sym] = quantity
      store[user_choice.to_sym][:quantity] -= quantity
      else
        puts "We don't have sufficient stock"
      end
     # Both to be converted to symbols as this is the format in the initial hash
    else
      puts "Sorry we don't sell that product"
    end
  end
end
puts "You have bought:"

sum = 0

shopping_list.each do |key, value|
  puts " - #{value} #{key}"
  sum = sum + store[key][:price] * quantity
end
puts "-------------------------------------------------------------"
puts " Please make a payment of #{sum} € to validate your order"
# 4. Print the bill (checkout)
# puts the price for (Checkout)
puts "-------------------------------------------------------------"
puts "Here is our updated list of available products"
store.each do |key, value|
  puts "#{key} at #{value[:price]} and with an available stock of #{value[:quantity]}"
end
