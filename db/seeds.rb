categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do |i|
  restaurant = Restaurant.new(
    name: "Restaurant #{i + 1}",
    address: "Address #{i + 1}",
    category: categories.sample
  )
  if restaurant.valid?
    restaurant.save
    puts "Created restaurant: #{restaurant.name}"
  else
    puts "Failed to create restaurant: #{restaurant.name}"
  end
end
