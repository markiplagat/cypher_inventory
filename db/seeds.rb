# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.find_or_create_by!(email: "admin@test.local") do |user|
  user.first_name = 'Giga'
  user.last_name = 'Cypher'
  user.password = "cypher12"
  user.password_confirmation = "cypher12"
  user.admin = true
end

User.find_or_create_by!(email: "user@test.local") do |user|
  user.first_name = 'Giga'
  user.last_name = 'Cypher'
  user.password = "cypher12"
  user.password_confirmation = "cypher12"
  user.admin = false
end

Product.find_or_create_by!(name: "Hisense 55U7GQ") do |product|
  product.description = "Hisense 55U7GQ 55 Inch 4K Quantum Dot ULED TV"
  product.price = 999.99
  product.quantity = 100
end
Product.find_or_create_by!(name: "Samsung Galaxy S21") do |product|
  product.description = "Samsung Galaxy S21 5G Smartphone"
  product.price = 799.99
  product.quantity = 50
end
Product.find_or_create_by!(name: "Apple MacBook Pro 16") do |product|
  product.description = "Apple MacBook Pro 16-inch with M1 Pro chip"
  product.price = 2499.99
  product.quantity = 30
end
Product.find_or_create_by!(name: "Sony WH-1000XM4") do |product|
  product.description = "Sony WH-1000XM4 Wireless Noise-Canceling Headphones"
  product.price = 349.99
  product.quantity = 200
end
Product.find_or_create_by!(name: "Dell XPS 13") do |product|
  product.description = "Dell XPS 13 13.4-inch Laptop with Intel Core i7"
  product.price = 1399.99
  product.quantity = 75
end
Product.find_or_create_by!(name: "Bose SoundLink Revolve") do |product|
  product.description = "Bose SoundLink Revolve Portable Bluetooth Speaker"
  product.price = 199.99
  product.quantity = 150
end
Product.find_or_create_by!(name: "Google Pixel 6") do |product|
  product.description = "Google Pixel 6 5G Smartphone with Google Tensor"
  product.price = 599.99
  product.quantity = 80
end
Product.find_or_create_by!(name: "Microsoft Surface Pro 7") do |product|
  product.description = "Microsoft Surface Pro 7 12.3-inch Touchscreen Laptop"
  product.price = 899.99
  product.quantity = 60
end
Product.find_or_create_by!(name: "Amazon Echo Dot (4th Gen)") do |product|
  product.description = "Amazon Echo Dot (4th Gen) Smart Speaker with Alexa"
  product.price = 49.99
  product.quantity = 500
end
Product.find_or_create_by!(name: "Fitbit Charge 5") do |product|
  product.description = "Fitbit Charge 5 Health and Fitness Tracker"
  product.price = 149.99
  product.quantity = 300
end
Product.find_or_create_by!(name: "Apple AirPods Pro") do |product|
  product.description = "Apple AirPods Pro with Active Noise Cancellation"
  product.price = 249.99
  product.quantity = 400
end
Product.find_or_create_by!(name: "LG OLED55CXPUA Alexa Built-In CX 55") do |product|
  product.description = "LG OLED55CXPUA Alexa Built-In CX 55-Inch 4K Smart OLED TV (2020)"
  product.price = 1499.99
  product.quantity = 120
end
Product.find_or_create_by!(name: "Nikon D3500") do |product|
  product.description = "Nikon D3500 DSLR Camera with 18-55mm Lens"
  product.price = 499.99
  product.quantity = 40
end
Product.find_or_create_by!(name: "Canon EOS Rebel T7") do |product|
  product.description = "Canon EOS Rebel T7 DSLR Camera with 18-55mm Lens"
  product.price = 449.99
  product.quantity = 45
end
Product.find_or_create_by!(name: "GoPro HERO9 Black") do |product|
  product.description = "GoPro HERO9 Black Waterproof Action Camera"
  product.price = 399.99
  product.quantity = 70
end
Product.find_or_create_by!(name: "Samsung Galaxy Tab S7") do |product|
  product.description = "Samsung Galaxy Tab S7 11-inch Android Tablet"
  product.price = 649.99
  product.quantity = 90
end
