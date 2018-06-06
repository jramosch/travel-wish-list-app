kratos = User.create(username: "papakratos", email: "ghostofspart@gow.com", password: "quietboy")
atreus = User.create(username: "imragnarok", email: "atreusorloki@gow.com", password: "godgiant")
freya = User.create(username: "valkyriequeen", email: "freya@midgard.com", password: "killkratos")

kratos.wishlist = Wishlist.create(name: "#{kratos.username}'s wishlist")
atreus.wishlist = Wishlist.create(name: "#{atreus.username}'s wishlist")
freya.wishlist = Wishlist.create(name: "#{freya.username}'s wishlist")

rome = City.create(name: "Rome")
athens = City.create(name: "Athens")

cities_by_kratos = [rome, athens]

cities_by_kratos.each do |city|
  kratos.city_ids << city.id
end

colosseum = Attraction.create(name: "The Colosseum",
  description: "Monumental 3-tiered Roman amphitheater once used for gladiatorial games, with guided tour option.")
parthenon = Attraction.create(name: "Parthenon",
  description: "Restored, landmark temple ruins on archaeological site with iconic Doric columns built from 447 BC.")
acropolis = Attraction.create(name: "Acropolis of Athens",
  description: "Ruins of iconic 5th-century B.C. temple complex on Athens' rocky hilltop undergoing restoration.")

attractions_by_kratos = [colosseum, parthenon, acropolis]
