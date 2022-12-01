require "open-uri"

puts "Cleaning up database..."

Message.destroy_all
Chatroom.destroy_all
Matching.destroy_all
User.destroy_all

puts "Database cleaned"

david = User.create!(nickname: 'david', instrument: 'platines', city: 'Paris', country: 'France', email: 'david@gmail.com', password: 'jimi44', bio: "Je cherche un musicien parisien expérimenté car je manque d'inspiration pour mon prochain set à Ibiza 😎.", experience: 36, style: "techno", birth_date: "1967-11-7", gender: "Homme" )
file = URI.open("https://images.rtl.fr/\~c/2000v2000/funradio/www/1533519-david-guetta-lors-de-la-64e-ceremonie-des-grammy-awards.jpg")
david.photo.attach(io: file, filename: "davidguetta.jpg", content_type: "image/jpg")
david.save

jimi = User.create!(nickname: 'jimi', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'jimi.hendrix@gmail.com', password: 'jimi44', bio: "Après avoir passé plusieurs années à faire du rock n' roll, je cherche à me reconvertir dans la musique classique 🎻.", experience: 7, style: "classique", birth_date: "1995-10-03", gender: "Homme" )
file = URI.open("https://cdns-images.dzcdn.net/images/artist/2deec542fc75d5691434c407ee077ff7/500x500.jpg")
jimi.photo.attach(io: file, filename: "jimihendrix.jpg", content_type: "image/jpg")
jimi.save

eric = User.create!(nickname: 'eric', instrument: 'piano', city: 'Bordeaux', country: 'France', email: 'eric.clapton@gmail.com', password: 'jimi44', bio: "Cherche à composer un groupe en France pour redonner un souffle à ma carrière en déclin outre-Atlantique.", experience: 20, style: "rock", birth_date: "1945-03-30", gender: "Homme" )
file = URI.open("https://www.larousse.fr/encyclopedie/data/images/1002428-Eric_Clapton.jpg")
eric.photo.attach(io: file, filename: "ericclapton.jpg", content_type: "image/jpg")
eric.save

kurt = User.create!(nickname: 'kurt', instrument: 'triangle', city: 'Toulouse', country: 'France', email: 'kurt.cobain@gmail.com', password: 'jimi44', bio: "Cherche à fonder un groupe moins joyeux que Nirvana que j'estime trop extravagant 💀.", experience: 27, style: "rock", birth_date: "1995-10-05", gender: "Homme" )
file = URI.open("https://images.radio-canada.ca/q_auto,w_960/v1/ici-info/16x9/kurt-cobain.jpg")
kurt.photo.attach(io: file, filename: "kurtcobain.jpg", content_type: "image/jpg")
kurt.save

bob = User.create!(nickname: 'bob', instrument: 'guitare', city: 'Rennes', country: 'France', email: 'bob.marley@gmail.com', password: 'jimi44', bio: "Cherche à trouver l'inspiration dans cette charmante ville moyennement dépaysante ☀️.", experience: 16, style:"reggae", birth_date: "1986-10-06", gender: "Homme" )
file = URI.open("https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/grk_ga564607_002_0.jpg?itok=eRTnsP6j")
bob.photo.attach(io: file, filename: "bobmarley.jpg", content_type: "image/jpg")
bob.save

amy = User.create!(nickname: 'amy', instrument: 'voix', city: 'Montpellier', country: 'France', email: 'amy.winehouse@gmail.com', password: 'jimi44', bio: "J'aime les grands espaces et faire attention à ma santé c'est pourquoi j'ai choisi d'emménager dans cette région. Je cherche des musiciennes talentueuses et qui savent faire la fête 🥳", experience: 17, style:"soul", birth_date: "1995-10-07", gender: "Femme" )
file = URI.open("https://media.vogue.fr/photos/5c360db03b3a64c63eb378b5/master/w_1600%2Cc_limit/winehouse_3797.jpeg?lang=eng")
amy.photo.attach(io: file, filename: "amywinehouse.jpg", content_type: "image/jpg")
amy.save

puts "User created"

Matching1 = Matching.create!(user: david, user_two_id: jimi.id, user_one_status: "pendind", user_two_status: "pending")
Matching2 = Matching.create!(user: david, user_two_id: eric.id, user_one_status: "pendind", user_two_status: "pending")
Matching3 = Matching.create!(user: david, user_two_id: kurt.id, user_one_status: "pendind", user_two_status: "pending")
Matching4 = Matching.create!(user: david, user_two_id: bob.id, user_one_status: "pendind", user_two_status: "pending")
Matching5 = Matching.create!(user: david, user_two_id: amy.id, user_one_status: "pendind", user_two_status: "pending")
puts "Matching created"
