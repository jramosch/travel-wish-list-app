user_list = [
  ["papakratos", "ghostofspart@gow.com", "quietboy"],
  ["imragnarok", "atreusorloki@gow.com", "godgiant"],
  ["valkyriequeen", "freya@midgard.com", "killkratos"]
]

user_list.each do |username, email, password|
  user = User.create(username: username, email:, email, password: password)
  user.wishlist = Wishlist.create(name: "#{username}'s wishlist")
end
