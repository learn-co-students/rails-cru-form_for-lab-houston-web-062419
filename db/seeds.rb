# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

a1 = Artist.create(name: "Josh", bio: "Nice and cool")
a2 = Artist.create(name: "Ray", bio: "Cool and calm")
a3 = Artist.create(name: "Clint", bio: "Good and balanced")

g1 = Genre.create(name: "Rap")
g2 = Genre.create(name: "Rock") 
g3 = Genre.create(name: "Country")

Song.create(name: "Forever", artist_id: a1.id, genre_id: g1.id)
Song.create(name: "Chillax", artist_id: a2.id, genre_id: g2.id)
Song.create(name: "Careless", artist_id: a3.id, genre_id: g2.id)
