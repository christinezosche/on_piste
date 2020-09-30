# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
whistler = Mountain.create(name: "Whistler Blackcomb", country: "Canada")
courchevel = Mountain.create(name: "Courchevel", country: "France")
zermatt = Mountain.create(name: "Zermatt", country: "Switzerland")
vail = Mountain.create(name: "Vail", country: "United States")
aspen = Mountain.create(name: "Aspen Snowmass", country: "United States")
val_d_isere = Mountain.create(name: "Val d'Isere", country: "France")
cortina = Mountain.create(name: "Cortina D'Ampezzo", country: "Italy")
telluride = Mountain.create(name: "Telluride", country: "United States")
niseko = Mountain.create(name: "Niseko", country: "Japan")
chamonix = Mountain.create(name: "Chamonix", country: "France")
st_anton = Mountain.create(name: "St. Anton", country: "Austria")
kitzbuhel = Mountain.create(name: "Kitzbühel", country: "Austria")
st_moritz = Mountain.create(name: "St. Moritz", country: "Switzerland")
park_city = Mountain.create(name: "Park City", country: "United States")
cerro = Mountain.create(name: "Cerro Catedral", country: "Argentina")

whistler.trails << [Trail.create(name: "Spanky's Ladder", difficulty: "Very Difficult"), Trail.create(name: "Seventh Heaven", difficulty: "Moderate"), Trail.create(name: "Lower Olympic", difficulty: "Easy"), Trail.create(name: "Blackcomb Glacier", difficulty: "Difficult")]
courchevel.trails << [Trail.create(name: "Suisse", difficulty: "Very Difficult"), Trail.create(name: "Plan Fontaine", difficulty: "Easy"), Trail.create(name: "Pic Bleu", difficulty: "Moderate"), Trail.create(name: "Jerusalem", difficulty: "Difficult")]
zermatt.trails << [Trail.create(name: "Gornergrat", difficulty: "Easy"), Trail.create(name: "Piste 59", difficulty: "Very Difficult"), Trail.create(name: "Riffelhorn", difficulty: "Moderate"), Trail.create(name: "White Hare", difficulty: "Difficult")]
vail.trails << [Trail.create(name: "Dealer's Choice", difficulty: "Moderate"), Trail.create(name: "Avanti", difficulty: "Difficult"), Trail.create(name: "Highline", difficulty: "Very Difficult"), Trail.create(name: "Poppyfields", difficulty: "Moderate")]
aspen.trails << [Trail.create(name: "Larkspur", difficulty: "Easy"), Trail.create(name: "Back of Bell", difficulty: "Difficult"), Trail.create(name: "Long Shot", difficulty: "Moderate"), Trail.create(name: "Olympic Bowl", difficulty: "Very Difficult")]
val_d_isere.trails << [Trail.create(name: "Leissières", difficulty: "Moderate"), Trail.create(name: "La Face", difficulty: "Difficult"), Trail.create(name: "Mangard", difficulty: "Moderate"), Trail.create(name: "Orange", difficulty: "Difficult")]
cortina.trails << [Trail.create(name: "Cinque Torri", difficulty: "Moderate"), Trail.create(name: "Pomedes", difficulty: "Easy"), Trail.create(name: "Hidden Valley", difficulty: "Moderate"), Trail.create(name: "Cristallo", difficulty: "Very Difficult")]
telluride.trails << [Trail.create(name: "Dew Drop", difficulty: "Moderate"), Trail.create(name: "Black Iron Bowl", difficulty: "Difficult"), Trail.create(name: "Galloping Goose", difficulty: "Easy"), Trail.create(name: "Spiral Stairs", difficulty: "Very Difficult")]
niseko.trails << [Trail.create(name: "An'nupuri", difficulty: "Easy"), Trail.create(name: "Namara", difficulty: "Moderate"), Trail.create(name: "Youtei Sunset", difficulty: "Difficult"), Trail.create(name: "Miharashi", difficulty: "Difficult")]
chamonix.trails << [Trail.create(name: "La Vormaine", difficulty: "Easy"), Trail.create(name: "Les Houches", difficulty: "Moderate"), Trail.create(name: "Brevent", difficulty: "Very Difficult"), Trail.create(name: "Grands Montets", difficulty: "Difficult")]
st_anton.trails << [Trail.create(name: "Schindler Spitze", difficulty: "Easy"), Trail.create(name: "Rendl Home Run", difficulty: "Difficult"), Trail.create(name: "Albona", difficulty: "Difficult"), Trail.create(name: "Mittelstation", difficulty: "Very Difficult")]
kitzbuhel.trails << [Trail.create(name: "Raintal", difficulty: "Easy"), Trail.create(name: "Bichlalm", difficulty: "Moderate"), Trail.create(name: "Wurzhöhe", difficulty: "Difficult"), Trail.create(name: "Die Streif", difficulty: "Very Difficult")]
st_moritz.trails << [Trail.create(name: "Languard", difficulty: "Easy"), Trail.create(name: "Corviglia", difficulty: "Difficult"), Trail.create(name: "Hahnensee", difficulty: "Difficult"), Trail.create(name: "Diavolezza", difficulty: "Very Difficult")]
park_city.trails << [Trail.create(name: "Home Run", difficulty: "Easy"), Trail.create(name: "Funnel Cloud", difficulty: "Difficult"), Trail.create(name: "Georgeanna", difficulty: "Moderate"), Trail.create(name: "McConkey Bowl", difficulty: "Very Difficult")]
cerro.trails << [Trail.create(name: "Del Bosque", difficulty: "Easy"), Trail.create(name: "Nubes", difficulty: "Difficult"), Trail.create(name: "Punta Nevada", difficulty: "Very Difficult"), Trail.create(name: "La Laguna", difficulty: "Very Difficult")]