# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'cleaning the db ...'
Restaurant.destroy_all
category = %w[french chinese belgian italian japanese]
5.times {
  restaurant = Restaurant.new(
    name: Faker::TvShows::Friends.character,
    phone_number: '07462632779',
    address: Faker::Address.full_address,
    category: category.sample
  )
  puts "succesfully created #{restaurant.name}"
  restaurant.save!
}
puts 'all done !'
