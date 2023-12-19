# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Payment.destroy_all
Tradeline.destroy_all

Tradeline.create!([{
  name: 'Cool credit card',
  amount: 1000.00
},
{
  name: 'Cooler credit card',
  amount: 2000.00
},
{
  name: 'Coolest credit card',
  amount: 30.00
}])
