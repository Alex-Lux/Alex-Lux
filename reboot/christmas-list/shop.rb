require "open-uri"
require "nokogiri"
# Has the logic to list, add, delete and mark elements as bought !
# We should have methods to list, add, delete, mark
# List
#Print all the user_list elements

def list(list)
  puts "Here are your products:"
  list.each_with_index do |(key, value), index|
    puts " #{index + 1}. [#{value ? 'X' : ' '}] #{key}"
  end
end

def add(user_list)
  puts "Which item have you bought ?"
  product = gets.chomp.to_sym

  if user_list.key?(product)
    user_list.each do |product, quantity|
     puts "The list contains #{value + 1} gifts"
    end
  else
    user_list[product] = false
    list(user_list)
    return user_list
  end
end


def delete(user_list)
  list(user_list)
  puts "Which gift do you want to remove from the list ?"
  product_to_delete = gets.chomp.to_sym
  user_list.delete(product_to_delete)
  list(user_list)
end

def idea(user_list)
  # scraping_etsy.rb
    puts "What are you searching on Etsy?"
  article = gets.chomp
# 1. We get the HTML file thanks to open-uri
  file = open("https://www.etsy.com/search?q=#{article}")

# 2. We build a Nokogiri document from this file
doc = Nokogiri::HTML(file)

# 3. We search every elements with class="card" in our HTML doc

doc.search(".n-listing-card__info").each do |card|
  # 4. for each element found, we extract its title and print it
  product = card.search(".card-meta-row").text.strip[0..15]
  user_list[product] = false
  end
  list(user_list)
end


# add item to user_list with value to false
# Delete
# Delete a user_list element
# Mark
# set the value of a user_list element to true
