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

photos = [ "http://res.cloudinary.com/dqkzp8fae/image/upload/v1527365097/1.jpg",
            ]

photos.each do |photo|
  new_photo = Photo.new(category: caterogies.sample)
  new_photo.remote_url_url = photo
  new_photo.save
end

puts "Photos created"

videos = [ "https://player.vimeo.com/video/236590457?color=ffffff", "https://player.vimeo.com/video/279733863?color=ffffff", "https://player.vimeo.com/video/276750873?color=ffffff"  "https://player.vimeo.com/video/266307622?color=ffffff",
           "https://player.vimeo.com/video/236584097?color=ffffff" ]

videos.each do |video|
  Video.create(url: video)
end

puts "Videos created"
