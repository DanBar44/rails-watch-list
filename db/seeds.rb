# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:

# Movie.destroy_all

#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# list.create!(name: 'Action')
# Bookmark.create!(
  #   movie: Oceans_8,
  #   list: action,
  #   comment: "Awesome!"
  # )
  # #  Awesome est le titre à personnaliser pour tester le code, notamment voir si avec moins de 6 carractère si ça passe alors que ça ne devrait pas en raison des validates

  Bookmark.destroy_all
  List.destroy_all
  Movie.destroy_all

  wonder = Movie.create!(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
  titanic = Movie.create!(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
  ocean_8 = Movie.create!(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

lotr = Movie.create!(
  title:    "LOTR - The Fellowship of The Ring",
  overview: "Dwarves, elves & orcs fighting",
  poster_url: "https://m.media-amazon.com/images/I/71I-wh09xFL._AC_SL1024_.jpg",
  rating:   10,
)

lotr_2 = Movie.create!(
  title:    "LOTR - The Two Towers",
  overview: "Dwarves, elves & orcs fighting, again!",
  poster_url: "https://img.fruugo.com/product/4/11/142404114_max.jpg",
  rating:   9,
)

epic_fantasy = List.create!(name: 'Epic fantasy', banner_url: "https://c4.wallpaperflare.com/wallpaper/1002/678/554/concept-art-banner-video-games-horns-wallpaper-thumb.jpg")
horror = List.create!(name: 'Horror', banner_url: "https://media.istockphoto.com/vectors/banner-for-horror-movie-festival-scary-cinema-vector-id1146422893?k=20&m=1146422893&s=170667a&w=0&h=D7Woc_AXtxL7JUEF4ZfgQqb0VWhRwJWmNqh5CagMQfc=")
action = List.create!(name: 'Action', banner_url: "https://p4.wallpaperbetter.com/wallpaper/811/593/239/action-battle-explosion-film-wallpaper-preview.jpg")
tragedy = List.create!(name: 'Tragedy', banner_url: "https://thecinemaholic.com/wp-content/uploads/2016/09/_d_improd_/kate-leo-freezing-titanic_f_improf_1024x576.jpg")


Bookmark.create!(
  movie:   lotr,
  list:    epic_fantasy,
  comment: "Awesome!"
)

Bookmark.create!(
  movie:   lotr_2,
  list:    epic_fantasy,
  comment: "Awesome sequel!"
)

Bookmark.create!(
  movie:   wonder,
  list:    action,
  comment: "Une daube!"
)

Bookmark.create!(
  movie:   titanic,
  list:    tragedy,
  comment: "Classique"
)


Bookmark.create!(
  movie:   ocean_8,
  list:    action,
  comment: "Mouais..."
)
