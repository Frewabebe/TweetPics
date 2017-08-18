# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Photo.destroy_all
Phrase.destroy_all

require 'flickraw'

FlickRaw.api_key=ENV['API_KEY']
FlickRaw.shared_secret="429b7c1005fd02a8"

list = flickr.photos.search tags: "mothballs, fire"

puts list.length
list.each do |x|
  puts x.title
end
