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
  description: "Huge observation wheel giving passengers a privileged bird's-eye view of the city's landmarks.")
louvre = Attraction.create(name: "The Louvre",
  description: "he Louvre Palace is a former royal palace located on the Right Bank of the Seine in Paris, between the Tuileries Gardens and the church of Saint-Germain l'Auxerrois.")

london.attractions << london_eye
paris.attractions << louvre

attractions_by_atreus = [london_eye, louvre]

attractions_by_atreus.each do |attraction|
  atreus.attractions << attraction
  atreus.wishlist.attractions << attraction
end
