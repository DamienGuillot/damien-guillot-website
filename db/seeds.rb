# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

damien = User.create(email: "damien.guillot@edu.ebs-paris.com", password: "123456", admin: true)

puts "Damien Admin created!"

caterogies = [ 'event', 'profile', 'food', 'portrait', 'corporate' ]

10.times do
  new_photo = Photo.new(title: Faker::Simpsons.character, category: caterogies.sample, user_id: damien.id)
  new_photo.remote_url_url = "https://picsum.photos/200/300/?random"
  new_photo.save
end

puts "Photos created"

10.times do
  new_video = Video.new(title: Faker::Simpsons.character, category: caterogies.sample, user_id: damien.id)
  new_video.remote_url_url = "https://picsum.photos/200/300/?random"
  new_video.save
end

puts "Videos created"
