require "open-uri"

puts "Cleaning up database..."

Message.destroy_all
Chatroom.destroy_all
Matching.destroy_all
User.destroy_all

puts "Database cleaned"

sylvain = User.create!(nickname: 'Sylvain', instrument: 'guitare', city: 'Nantes', email: 'spe@nge.fr', password: 'azerty', bio: "Je cherche désespérément des musiciens expérimentés en Rock'n'Roll pour buffer toute la nuit, je dispose d'un grand espace de jeu :feu:.", experience: "expert", style: "Rock'n'Roll", birth_date: "1991-4-12")
file = URI.open("https://res.cloudinary.com/dy6mp30ja/image/upload/c_pad,b_auto:predominant,fl_preserve_transparency/v1670505092/sylvain_d6fbo4.jpg")
sylvain.photo.attach(io: file, filename: "sylvain.jpg", content_type: "image/jpg")
sylvain.save

jimi = User.create!(nickname: 'Jimi-Hendrix', instrument: 'guitare', city: 'Nantes', email: 'jimi.hendrix@gmail.com', password: 'jimi44', bio: "Je cherche un acolyte qui m'apprendra à jouer de la guitare différemment que derrière la tête, avec les dents :dent: ou qu'en la brûlant:feu:en vue d'un prochain album de jazz.", experience: "expert", style: "Blues", birth_date: "1945-3-30")
file = URI.open("https://cdns-images.dzcdn.net/images/artist/2deec542fc75d5691434c407ee077ff7/500x500.jpg")
jimi.photo.attach(io: file, filename: "jimihendrix.jpg", content_type: "image/jpg")
jimi.save

eric = User.create!(nickname: 'Eric-Clapton', instrument: 'guitare', city: 'Nantes', email: 'eric.clapton@gmail.com', password: 'jimi44', bio: "Hello, alors moi c'est Eric , ou God, Slow hands, ou Ewik pour les intimes, je cherche mon remplaçant et il y a plein de monde ici.", experience: "expert", style: "Blues", birth_date: "190-10-04")
file = URI.open("https://www.larousse.fr/encyclopedie/data/images/1002428-Eric_Clapton.jpg")
eric.photo.attach(io: file, filename: "ericclapton.jpg", content_type: "image/jpg")
eric.save

kurt = User.create!(nickname: 'Kurt', instrument: 'guitare', city: 'Nantes', email: 'kurt.cobain@gmail.com', password: 'jimi44', bio: "C'est pas la grande grande forme en ce moment donc je cherche à reconstituer un groupe de rock en France moins fun que Nirvana que je trouve beaucoup trop extravagant:crâne:.", experience: "expert", style: "Rock", birth_date: "1995-10-05")
file = URI.open("https://images.radio-canada.ca/q_auto,w_960/v1/ici-info/16x9/kurt-cobain.jpg")
kurt.photo.attach(io: file, filename: "kurtcobain.jpg", content_type: "image/jpg")
kurt.save

bob = User.create!(nickname: 'B-Marley', instrument: 'guitare', city: 'Nantes', email: 'bob.marley@gmail.com', password: 'jimi44', bio: "C'est pas la grande grande forme en ce moment donc je cherche à reconstituer un groupe de rock en France moins fun que Nirvana que je trouve beaucoup trop extravagant:crâne:.", experience: "expert", style:"Reggae", birth_date: "1986-10-06")
file = URI.open("https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/grk_ga564607_002_0.jpg?itok=eRTnsP6j")
bob.photo.attach(io: file, filename: "bobmarley.jpg", content_type: "image/jpg")
bob.save

amy = User.create!(nickname: 'Amy', instrument: 'voix', city: 'Nantes', email: 'amy.winehouse@gmail.com', password: 'jimmy44', bio: "Amoureuse des grands espaces, je m'installe en France pour me ressourcer et prendre soin de ma santé :salade_verte:, dont je fais une véritable priorité depuis toujours...", experience: "expert", style:"Rythm&Blues", birth_date: "1995-10-07")
file = URI.open("https://media.vogue.fr/photos/5c360db03b3a64c63eb378b5/master/w_1600%2Cc_limit/winehouse_3797.jpeg?lang=eng")
amy.photo.attach(io: file, filename: "amywinehouse.jpg", content_type: "image/jpg")
amy.save

puts "User created"

matching1 = Matching.create!(user: sylvain, user_two_id: jimi.id, user_one_status: "accept", user_two_status: "accept")
matching2 = Matching.create!(user: kurt, user_two_id: sylvain.id, user_one_status: "accept", user_two_status: "accept")
matching3 = Matching.create!(user: sylvain, user_two_id: kurt.id, user_one_status: "pending", user_two_status: "pending")
matching4 = Matching.create!(user: sylvain, user_two_id: bob.id, user_one_status: "pending", user_two_status: "pending")
matching5 = Matching.create!(user: sylvain, user_two_id: amy.id, user_one_status: "pending", user_two_status: "pending")
matching6 = Matching.create!(user: sylvain, user_two_id: eric.id, user_one_status: "pending", user_two_status: "pending")
matching7 = Matching.create!(user: eric, user_two_id: kurt.id, user_one_status: "pending", user_two_status: "pending")
matching8 = Matching.create!(user: eric, user_two_id: bob.id, user_one_status: "pending", user_two_status: "pending")
matching9 = Matching.create!(user: jimi, user_two_id: eric.id, user_one_status: "pending", user_two_status: "pending")
matching10 = Matching.create!(user: jimi, user_two_id: amy.id, user_one_status: "pending", user_two_status: "pending")
matching11 = Matching.create!(user: jimi, user_two_id: kurt.id, user_one_status: "pending", user_two_status: "pending")
matching12 = Matching.create!(user: jimi, user_two_id: bob.id, user_one_status: "pending", user_two_status: "pending")

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
