# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@a = Artist.create(name: "Vanessa Paradie", bio: "Born in Paris.")
@m = Artist.create(name: "Madonna", bio: "Born in New York.")

@p = Genre.create(name: "pop")

Song.create(name: "Taxi", artist_id: @a.id, genre_id: @p.id)
Song.create(name: "Rain", artist_id: @m.id, genre_id: @p.id)

