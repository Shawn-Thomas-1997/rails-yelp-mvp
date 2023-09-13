require 'faker'
categories = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do |i|
  restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: categories.sample
  )

  if restaurant.valid?
    restaurant.save
    puts "Created restaurant: #{restaurant.name}"
  else
    puts "Failed to create restaurant: #{restaurant.name}"
  end
end
