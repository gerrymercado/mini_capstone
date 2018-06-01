require 'unirest'

# puts "Enter product name"
# name = gets.chomp


# params = {
#   name: "Nike Resistance Bands",
#   price: 35,
#   image_url: "https://images.eastbay.com/pi/NER27043/zoom/nike-lateral-resistance-bands-mens",
#   description: "Premium resistance bands to develop lateral speed and first-step quickness"
# }

# response = Unirest.post("http://localhost:3000/api/products", 
#   parameters: params).body

# puts JSON.pretty_generate(response)

# puts "What product id would you like to update?"
# product_id = gets.chomp

# params = {
#   description: "This ball has a great bounce and feels soft!"
# }


# response = Unirest.patch("http://localhost:3000/api/products/#{product_id}", parameters: params).body

# puts JSON.pretty_generate(response)

puts "What product id would you like to destroy?"
product_id = gets.chomp

response = Unirest.delete("http://localhost:3000/api/products/#{product_id}").body

puts response


