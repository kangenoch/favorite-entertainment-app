# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!([
  { name: "Tony Stark", email: "tony@example.com", password: "password", password_confirmation: "password", image_url: "https://res.cloudinary.com/dzdgpwtox/image/upload/w_450,c_scale/v1618916648/final_designs/seller_design_181248/f_20210420110406.png" },
  { name: "Steve Rogers", email: "steve@example.com", password: "password", password_confirmation: "password", image_url: "https://cdn.pixabay.com/photo/2021/11/12/14/33/captain-america-6789190_1280.jpg" },
  { name: "Thor", email: "thor@example.com", password: "password", password_confirmation: "password", image_url: "https://us.123rf.com/450wm/comodo777/comodo7772109/comodo777210900007/177231942-a-vector-of-thor-from-norse-mythology.jpg?ver=6" },
  { name: "Bruce Banner", email: "bruce@example.com", password: "password", password_confirmation: "password", image_url: "https://i.pinimg.com/1200x/93/b4/d3/93b4d319622496b916903cd2e9ce0488.jpg" },
  { name: "Natasha Romanoff", email: "natasha@example.com", password: "password", password_confirmation: "password", image_url: "https://mystickermania.com/cdn/stickers/4/1771-512x512.png" },
  { name: "Clint Barton", email: "clint@example.com", password: "password", password_confirmation: "password", image_url: "https://e7.pngegg.com/pngimages/717/557/png-clipart-clint-barton-iron-man-loki-hulk-drawing-hawkeye-avengers-photography.png" },
  { name: "Wanda Maximoff", email: "wanda@example.com", password: "password", password_confirmation: "password", image_url: "https://pngfre.com/wp-content/uploads/wanda-maximoff-7-611x1024.png" },
  { name: "Vision", email: "vision@example.com", password: "password", password_confirmation: "password", image_url: "https://e7.pngegg.com/pngimages/717/557/png-clipart-clint-barton-iron-man-loki-hulk-drawing-hawkeye-avengers-photography.png" },
])

Favorite.create!([
  { user_id: 1, item_id: 1 },
  { user_id: 1, item_id: 2 },
  { user_id: 2, item_id: 3 },
  { user_id: 2, item_id: 4 },
  { user_id: 3, item_id: 5 },
  { user_id: 3, item_id: 6 },
  { user_id: 4, item_id: 7 },
  { user_id: 4, item_id: 8 },
  { user_id: 5, item_id: 9 },
  { user_id: 5, item_id: 10 },
  { user_id: 6, item_id: 11 },
  { user_id: 6, item_id: 12 },
  { user_id: 7, item_id: 13 },
  { user_id: 7, item_id: 14 },
  { user_id: 8, item_id: 15 },
  { user_id: 8, item_id: 16 },
])

Item.create!([
  { name: "Iron Man", image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSF3aJo0uoaj4ZH6yq-wvJAoSOsi_R0VlHGdKxAV5xbWh96HFhHKMNUlXMPYBGJxAAjtA&usqp=CAU", description: "Iron Man is the superhero persona of Anthony Edward Tony Stark, a businessman and engineer who runs the company Stark Industries. Beginning his career as ...", category: "Action" },
  { name: "Captain America", image_url: "https://cdn.britannica.com/30/182830-050-96F2ED76/Chris-Evans-title-character-Joe-Johnston-Captain.jpg", description: "Captain America: The First Avenger ... After being deemed unfit for military service, Steve Rogers volunteers for a top secret research.", category: "Action" },
  { name: "Hulk", image_url: "https://flxt.tmsimg.com/assets/p176337_p_v10_ag.jpg", description: "Scientist Bruce Banner (Edward Norton) desperately seeks a cure for the gamma radiation that contaminated his cells and turned him into The Hulk. Cut off from his true love Betty Ross (Liv Tyler) and forced to hide from his nemesis, Gen. Thunderbolt Ross (William Hurt), Banner soon comes face-to-fac…", category: "Action" },
  { name: "Thor", image_url: "https://upload.wikimedia.org/wikipedia/en/9/95/Thor_%28film%29_poster.jpg", description: "The powerful but arrogant god Thor is cast out of Asgard to live amongst humans in Midgard (Earth), where he soon becomes one of their finest defenders.", category: "Action" },
  { name: "Black Widow", image_url: "https://upload.wikimedia.org/wikipedia/en/e/e9/Black_Widow_%282021_film%29_poster.jpg", description: "Natasha confronts her history as a spy and the broken relationships left in her wake.", category: "Action" },
  { name: "Hawkeye", image_url: "https://images.thedirect.com/media/photos/hawkeyuys.jpg", description: "Jeremy Renner as Clint Barton / Hawkeye: A master archer and a former Avenger and agent of S.H.I.E.L.D. The series further explores the character's time as ...", category: "Action" },
  { name: "Wanda Vision", image_url: "https://m.media-amazon.com/images/M/MV5BZGEwYmMwZmMtMTQ3MS00YWNhLWEwMmQtZTU5YTIwZmJjZGQ0XkEyXkFqcGdeQXVyMTI5MzA5MjA1._V1_.jpg", description: "Two super-powered beings living idealized suburban lives suspect that everything is not as it seems.", category: "Action" },
  { name: "Don't Look Up", image_url: "https://m.media-amazon.com/images/M/MV5BZjcwZjY3NjAtNzkxZS00NmFjLTg1OGYtODJmMThhY2UwMTc5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_FMjpg_UX1000_.jpg", description: "Don't Look Up is a 2021 American apocalyptic political satire black comedy film written, co-produced, and directed by Adam McKay from a story he co-wrote ...", category: "Comedy" },
  { name: "Your Name", image_url: "https://animeuknews.net/app/uploads/2018/01/Your-Name-Poster-Clean-1.jpg", description: "Two teenagers share a profound, magical connection upon discovering they are swapping bodies. Things manage to become even more complicated when the boy and ...", category: "Animation" },
  { name: "Interstellar", image_url: "https://m.media-amazon.com/images/I/A1JVqNMI7UL._AC_UF894,1000_QL80_.jpg", description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.", category: "Sci-Fi" },
  { name: "Oldboy", image_url: "https://resizing.flixster.com/A4O8aEoaCjZEfnOEFvH8nUmxTtI=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzZjMjAzODE0LWQ3YTItNDg0NC1iMTY5LTIzOGJmZDM0ZTZjOC5qcGc=", description: "The basic story is that a man named Oh Dae-Su is kidnapped and held captive for 18 years and then released. He has no idea who or why this is being done to him.", category: "Drama" },
  { name: "The Notebook", image_url: "https://m.media-amazon.com/images/M/MV5BN2I3ZmRjODAtMjBiNy00ZmEwLWEzZjItZjM4NGZhNGYyNTA0XkEyXkFqcGdeQXVyMTEwNDU1MzEy._V1_.jpg", description: "A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom. However, social differences soon get in the way.", category: "Romance" },
  { name: "Interstellar", image_url: "https://m.media-amazon.com/images/I/A1JVqNMI7UL._AC_UF894,1000_QL80_.jpg", description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.", category: "Sci-Fi" },
  { name: "The Rescue", image_url: "https://lumiere-a.akamaihd.net/v1/images/therescue-poster_1080x1600_e9ca44a1.jpeg?region=0%2C0%2C1080%2C1600", description: "THE RESCUE chronicles the against-all-odds story of the daring rescue of twelve boys and their coach from deep inside a flooded cave in Thailand.", category: "Documentary" },
  { name: "Shehzada", image_url: "https://m.media-amazon.com/images/M/MV5BMjQzYjE0NGEtZjBkOS00NjUzLWIwOWQtOWYyYjZjNjI1MzQyXkEyXkFqcGdeQXVyMTA1OTk1MjY3._V1_FMjpg_UX1000_.jpg", description: "After realizing he was switched at birth by a conniving father, a rakish Bantu's life is upended when he becomes the heir to a billionaire.", category: "World" },
  { name: "47 Meters Down", image_url: "https://m.media-amazon.com/images/M/MV5BMDc1MmVjMDQtOGU3OS00OTJkLWJmOGQtNDMzMWRjNDAzY2Y2XkEyXkFqcGdeQXVyMTk5MzE1MTY@._V1_.jpg", description: "Two sisters vacationing in Mexico are trapped in a shark cage at the bottom of the ocean. With less than an hour of oxygen left and great white sharks circling ...", category: "Horror" },
  { name: "Paul", image_url: "https://images.sr.roku.com/idType/roku/context/global/id/524a8cd994e55e32b3cc50bafccae94f/images/gracenote/assets/p8371978_v_v12_ak.jpg/magic/396x0/filters:quality(70)", description: "Two British comic-book geeks traveling across the U.S. encounter an alien outside Area 51. Play trailer ...", category: "Sci-Fi" },

])
