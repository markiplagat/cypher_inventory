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
