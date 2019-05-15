Restaurant.delete_all

category = %w[chinese italian french japanese belgian].to_a

15.times do
  new_name = Faker::Company.name
  new_address = Faker::Address.street_address
  new_category = category.sample
  r = Restaurant.new(name: new_name, address: new_address, category: new_category)
  r.save!
end
