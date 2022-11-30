require "open-uri"

puts "Cleaning up database..."

User.destroy_all
Message.destroy_all
Matching.destroy_all
Chatroom.destroy_all

puts "Database cleaned"

david = User.create!(nickname: 'david', instrument: 'platines', city: 'Paris', country: 'France', email: 'david@gmail.com', password: 'jimi44', bio: "la musique c'est vraiment sympa", experience: 17, style: "Rock", birth_date: "1980-9-24", gender: "Homme" )
file = URI.open("https://images.rtl.fr/\~c/2000v2000/funradio/www/1533519-david-guetta-lors-de-la-64e-ceremonie-des-grammy-awards.jpg")
david.photo.attach(io: file, filename: "davidguetta.jpg", content_type: "image/jpg")
david.save

jimi = User.create!(nickname: 'jimi', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'jimi.hendrix@gmail.com', password: 'jimi44', bio: "la musique c'est vraiment bien", experience: 2, style: "classique", birth_date: "2000-10-03", gender: "Homme" )
file = URI.open("https://cdns-images.dzcdn.net/images/artist/2deec542fc75d5691434c407ee077ff7/500x500.jpg")
jimi.photo.attach(io: file, filename: "jimihendrix.jpg", content_type: "image/jpg")
jimi.save

eric = User.create!(nickname: 'eric', instrument: 'piano', city: 'Bordeaux', country: 'France', email: 'eric.clapton@gmail.com', password: 'jimi44', bio: "la musique c'est vraiment trop cool", experience: 20, style: "rock", birth_date: "2000-10-04", gender: "Homme" )
file = URI.open("https://www.larousse.fr/encyclopedie/data/images/1002428-Eric_Clapton.jpg")
eric.photo.attach(io: file, filename: "ericclapton.jpg", content_type: "image/jpg")
eric.save

kurt = User.create!(nickname: 'kurt', instrument: 'triangle', city: 'Toulouse', country: 'France', email: 'kurt.cobain@gmail.com', password: 'jimi44', bio: "la musique c'est vraiment incroyable", experience: 27, style: "rock", birth_date: "2000-10-05", gender: "Homme" )
file = URI.open("https://images.radio-canada.ca/q_auto,w_960/v1/ici-info/16x9/kurt-cobain.jpg")
kurt.photo.attach(io: file, filename: "kurtcobain.jpg", content_type: "image/jpg")
kurt.save

bob = User.create!(nickname: 'bob', instrument: 'guitare', city: 'Rennes', country: 'France', email: 'bob.marley@gmail.com', password: 'jimi44', bio: "la musique c'est vraiment génial", experience: 36, style:"reggae", birth_date: "2000-10-06", gender: "Homme" )
file = URI.open("https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/grk_ga564607_002_0.jpg?itok=eRTnsP6j")
bob.photo.attach(io: file, filename: "bobmarley.jpg", content_type: "image/jpg")
bob.save

amy = User.create!(nickname: 'amy', instrument: 'voix', city: 'Montpellier', country: 'France', email: 'amy.winehouse@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment fantastique", experience: 27, style:"soul", birth_date: "2000-10-07", gender: "Femme" )
file = URI.open("https://media.vogue.fr/photos/5c360db03b3a64c63eb378b5/master/w_1600%2Cc_limit/winehouse_3797.jpeg?lang=eng")
amy.photo.attach(io: file, filename: "amywinehouse.jpg", content_type: "image/jpg")
amy.save

puts "User created"

Matching1 = Matching.create!(user: david, user_two_id: jimi, user_one_status: "pendind", user_two_status: "pending")
Matching2 = Matching.create!(user: david, user_two_id: eric, user_one_status: "pendind", user_two_status: "pending")
Matching3 = Matching.create!(user: david, user_two_id: kurt, user_one_status: "pendind", user_two_status: "pending")
Matching4 = Matching.create!(user: david, user_two_id: bob, user_one_status: "pendind", user_two_status: "pending")

puts "Matching created"
