kratos = User.create(username: "papakratos", email: "ghostofsparta@gow.com", password: "quietboy")
atreus = User.create(username: "imragnarok", email: "atreusorloki@gow.com", password: "godgiant")
freya = User.create(username: "valkyriequeen", email: "freya@midgard.com", password: "killkratos")

kratos.wishlist = Wishlist.create(name: "#{kratos.username}'s wishlist")
atreus.wishlist = Wishlist.create(name: "#{atreus.username}'s wishlist")
freya.wishlist = Wishlist.create(name: "#{freya.username}'s wishlist")

rome = City.create(name: "Rome")
athens = City.create(name: "Athens")

cities_by_kratos = [rome, athens]

cities_by_kratos.each do |city|
  kratos.cities << city
end

colosseum = Attraction.create(name: "The Colosseum",
  description: "The Colosseum or Coliseum, also known as the Flavian Amphitheatre, is an oval amphitheatre in the centre of the city of Rome, Italy. Built of travertine, tuff, and brick-faced concrete, it is the largest amphitheatre ever built. The Colosseum is situated just east of the Roman Forum.")
parthenon = Attraction.create(name: "Parthenon",
  description: "The Parthenon is a former temple, on the Athenian Acropolis, Greece, dedicated to the goddess Athena, whom the people of Athens considered their patron.")
acropolis = Attraction.create(name: "Acropolis of Athens",
  description: "The Acropolis of Athens is an ancient citadel located on a rocky outcrop above the city of Athens and contains the remains of several ancient buildings of great architectural and historic significance, the most famous being the Parthenon. The significance of the Acropolis of Athens is such that it is commonly known as "The Acropolis" without qualification. During ancient times it was known also more properly as Cecropia, after the legendary serpent-man, Cecrops, the first Athenian king.")

rome.attractions << colosseum
athens.attractions << parthenon
athens.attractions << acropolis

attractions_by_kratos = [colosseum, parthenon, acropolis]

attractions_by_kratos.each do |attraction|
  kratos.attractions << attraction
  kratos.wishlist.attractions << attraction
end

london = City.create(name: "London")
paris = City.create(name: "Paris")

cities_by_atreus = [london, paris]

cities_by_atreus.each do |city|
  atreus.cities << city
end

london_eye = Attraction.create(name: "London Eye",
  description: "The London Eye, known for sponsorship reasons as the Coca-Cola London Eye, is a giant Ferris wheel on the South Bank of the River Thames in London. The structure is 135 metres (443 ft) tall and the wheel has a diameter of 120 metres (394 ft). When it opened to the public in 2000 it was the world's tallest Ferris wheel.")
louvre = Attraction.create(name: "The Louvre",
  description: "The Louvre or the Louvre Museum is the world's largest art museum and a historic monument in Paris, France. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement (district or ward). Approximately 38,000 objects from prehistory to the 21st century are exhibited over an area of 72,735 square metres (782,910 square feet). In 2017, the Louvre was the world's most visited art museum, receiving 8.1 million visitors.")

london.attractions << london_eye
paris.attractions << louvre

attractions_by_atreus = [london_eye, louvre]

attractions_by_atreus.each do |attraction|
  atreus.attractions << attraction
  atreus.wishlist.attractions << attraction
end
