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
           "http://res.cloudinary.com/dqkzp8fae/image/upload/v1527365094/4.jpg",
           "http://res.cloudinary.com/dqkzp8fae/image/upload/v1527365094/7.jpg",
           "http://res.cloudinary.com/dqkzp8fae/image/upload/v1527365095/8.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365096/9.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365096/2.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365096/3.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365097/10.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365099/16.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365099/15.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365101/18.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365101/20.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1527365100/19.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1528566067/Vermont.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1528566068/BTZ.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1528566067/Bagel.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1528566067/QLF.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1528566067/Patates.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1528566067/34045035_10216292543284202_438508936786608128_o.jpg",
           "https://res.cloudinary.com/dqkzp8fae/image/upload/v1528566067/Cuba.jpg"
            ]

photos.each do |photo|
  new_photo = Photo.new(category: caterogies.sample)
  new_photo.remote_url_url = photo
  new_photo.save
end

puts "Photos created"

videos = [ "https://player.vimeo.com/video/236590457?color=ffffff", "https://player.vimeo.com/video/266307622?color=ffffff",
           "https://player.vimeo.com/video/236584097?color=ffffff" ]

videos.each do |video|
  Video.create(url: video)
end

puts "Videos created"
