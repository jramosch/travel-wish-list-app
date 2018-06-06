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
  description: "Monumental 3-tiered Roman amphitheater once used for gladiatorial games, with guided tour option.")
parthenon = Attraction.create(name: "Parthenon",
  description: "Restored, landmark temple ruins on archaeological site with iconic Doric columns built from 447 BC.")
acropolis = Attraction.create(name: "Acropolis of Athens",
  description: "Ruins of iconic 5th-century B.C. temple complex on Athens' rocky hilltop undergoing restoration.")

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
