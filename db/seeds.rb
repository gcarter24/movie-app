# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
actor = Actor.new({ first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock" })
actor.save

Actor.create(first_name: "Dan", last_name: "Ackroyd", known_for: "Ghostbusters")

Movie.create(title: "Star Wars", year: 1977, plot: "It is a period of civil wars in the galaxy. A brave alliance of underground freedom fighters has challenged the tyranny and oppression of the awesome GALACTIC EMPIRE.

  Striking from a fortress hidden among the billion stars of the galaxy, rebel spaceships have won their first victory in a battle with the powerful Imperial Starfleet. The EMPIRE fears that another defeat could bring a thousand more solar systems into the rebellion, and Imperial control over the galaxy would be lost forever.
  
  To crush the rebellion once and for all, the EMPIRE is constructing a sinister new battle station. Powerful enough to destroy an entire planet, its completion spells certain doom for the champions of freedom. ")

Movie.create(title: "National Treasure", year: 2004, plot: "A historian steals the Declaration of Independence on a treasure hunt")

Movie.create(title: "Raiders of the Lost Ark", year: 1981, plot: "A historian steals the Holy Grail on a treasure hunt")

Movie.create(title: "Toy Story", year: 1995, plot: "A kid's toys come to life when he's not around and go on adventures")
