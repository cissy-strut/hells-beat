require "open-uri"

puts "Cleaning up database..."

Message.destroy_all
Chatroom.destroy_all
Matching.destroy_all
User.destroy_all

puts "Database cleaned"

sylvain = User.create!(nickname: 'Sylvain', instrument: 'Guitare', city: 'Nantes', email: 'spe@nge.fr', password: 'azerty', bio: "Je cherche désespérément des musiciens expérimentés en Rock'n'Roll pour buffer toute la nuit, je dispose d'un grand espace de jeu :feu:.", experience: "Expert", style: "Rock'n'roll", birth_date: "1991-4-12")
file = URI.open("https://res.cloudinary.com/dy6mp30ja/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1670505092/sylvain_d6fbo4.jpg")
sylvain.photo.attach(io: file, filename: "sylvain.jpg", content_type: "image/jpg")
sylvain.save

romain = User.create!(nickname: 'Romain', instrument: 'Guitare', city: 'Nantes', email: 'rom@gmail.com', password: 'azerty', bio: "Je cherche un acolyte qui m'apprendra à jouer de la guitare différemment que derrière la tête, avec les dents :dent: ou qu'en la brûlant:feu:en vue d'un prochain album de jazz.", experience: "expert", style: "Blues", birth_date: "1985-3-30")
file = URI.open("https://saywhofr.fra1.digitaloceanspaces.com/app/uploads/2020/03/LesBainsFestival-Saywho-9563-768x1152.jpg")
romain.photo.attach(io: file, filename: "rom.jpg", content_type: "image/jpg")
romain.save

pierre = User.create!(nickname: 'Pierre', instrument: 'Basse', city: 'Nantes', email: 'pierre@gmail.com', password: 'azerty', bio: "Yo !! Moi c'est pierre, bassiste depuis 10 ans , j'ai joué avec -m- , clara luciani, minuit, etc. Je cherche des potes avec qui faire des JAMs ", experience: "Expert", style: "Blues", birth_date: "1990-10-04")
file = URI.open("https://res.cloudinary.com/dcyafbpoh/image/upload/b_rgb:000000,o_64/v1623397379/Capture-Youtube-Pierre-La-belle-aube.jpg")
pierre.photo.attach(io: file, filename: "pierre.jpg", content_type: "image/jpg")
pierre.save

tanguy = User.create!(nickname: 'Tanguy', instrument: 'Batterie', city: 'Nantes', email: 'tanguy@gmail.com', password: 'azerty', bio: "Hello la team, moi c'est Tanguy Clarence, à coté de mon taff de dev, je suis batteur du groupe Minuit, Romain Pinsolle , Chedid, et bien d'autre j'aime rencontrer d'autre Zicos", experience: "Expert", style: "Rock'n'roll", birth_date: "1995-10-05")
file = URI.open("https://live.staticflickr.com/65535/49122368306_1136a9f6b5_z.jpg")
tanguy.photo.attach(io: file, filename: "tanguy.jpg", content_type: "image/jpg")
tanguy.save

leo = User.create!(nickname: 'Léo', instrument: 'Guitare', city: 'Nantes', email: 'leo@gmail.com', password: 'azerty', bio: "Moi je suis juste la pour faire la promo de mon groupe Météo Mirage. Mais sinon fan de matos (pédales, guitares, etc)", experience: "Expert", style:"Blues", birth_date: "1986-10-06")
file = URI.open("https://www.artymag.com/wp-content/uploads/2021/02/METEO-MIRAGE-ON-STAIRS-SESSION-%C2%A9Anoussa-Chea-5-scaled.jpg")
leo.photo.attach(io: file, filename: "leomarley.jpg", content_type: "image/jpg")
leo.save

kartus = User.create!(nickname: 'Kartus', instrument: 'Voix', city: 'Nantes', email: 'kartus@gmail.com', password: 'azerty', bio: "Chanteur de météo mirage j'aime aussi jouer du clavier donc si jamais vous voulez jouer avec moi je suis sur Nantes city", experience: "Expert", style:"Blues", birth_date: "1995-10-07")
file = URI.open("https://media.vogue.fr/photos/5c360db03b3a64c63eb378b5/master/w_1600%2Cc_limit/winehouse_3797.jpeg?lang=eng")
kartus.photo.attach(io: file, filename: "kartuswinehouse.jpg", content_type: "image/jpg")
kartus.save

puts "User created"

matching1 = Matching.create!(user: sylvain, user_two_id: romain.id, user_one_status: "pending", user_two_status: "accept")
matching2 = Matching.create!(user: tanguy, user_two_id: sylvain.id, user_one_status: "accept", user_two_status: "accept")
matching3 = Matching.create!(user: sylvain, user_two_id: tanguy.id, user_one_status: "pending", user_two_status: "pending")
matching4 = Matching.create!(user: sylvain, user_two_id: leo.id, user_one_status: "pending", user_two_status: "pending")
matching5 = Matching.create!(user: sylvain, user_two_id: kartus.id, user_one_status: "pending", user_two_status: "pending")
matching6 = Matching.create!(user: sylvain, user_two_id: pierre.id, user_one_status: "pending", user_two_status: "pending")
matching7 = Matching.create!(user: pierre, user_two_id: tanguy.id, user_one_status: "pending", user_two_status: "pending")
matching8 = Matching.create!(user: pierre, user_two_id: leo.id, user_one_status: "pending", user_two_status: "pending")
matching9 = Matching.create!(user: romain, user_two_id: pierre.id, user_one_status: "pending", user_two_status: "pending")
matching10 = Matching.create!(user: romain, user_two_id: kartus.id, user_one_status: "pending", user_two_status: "pending")
matching11 = Matching.create!(user: romain, user_two_id: tanguy.id, user_one_status: "pending", user_two_status: "pending")
matching12 = Matching.create!(user: romain, user_two_id: leo.id, user_one_status: "pending", user_two_status: "pending")

puts "Matching created"

chatroom1 = Chatroom.create!(matching_id: matching1.id)
chatroom2 = Chatroom.create!(matching_id: matching2.id)
chatroom3 = Chatroom.create!(matching_id: matching3.id)
chatroom4 = Chatroom.create!(matching_id: matching4.id)
chatroom5 = Chatroom.create!(matching_id: matching5.id)
chatroom6 = Chatroom.create!(matching_id: matching6.id)
chatroom7 = Chatroom.create!(matching_id: matching7.id)
chatroom8 = Chatroom.create!(matching_id: matching8.id)
chatroom9 = Chatroom.create!(matching_id: matching9.id)
chatroom10 = Chatroom.create!(matching_id: matching10.id)
chatroom11 = Chatroom.create!(matching_id: matching11.id)
chatroom12 = Chatroom.create!(matching_id: matching12.id)

puts "Chatrooms created"
