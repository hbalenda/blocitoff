require 'factory_girl_rails'

25.times do
  user = FactoryGirl.create(:user)
end

users = User.all

75.times do
  FactoryGirl.create(:item, user: users.sample)
end

items = Item.all

puts "You seeded #{users.count} users."
puts "You seeded #{items.count} items."
