require "open-uri"

puts "Cleaning up database..."

Message.destroy_all
Chatroom.destroy_all
Matching.destroy_all
User.destroy_all

puts "Database cleaned"

david = User.create!(nickname: 'david', instrument: 'platines', city: 'Paris', country: 'France', email: 'david@gmail.com', password: 'jimi44', bio: "Moi c'est David un gros beauf qui fait des musique pour les beauf j'aimerais juste trouver des vrais musiciens afin de voir ce qu'est un morceau de musique", experience: 17, style: "Electro", birth_date: "1980-9-24", gender: "Homme" )
file = URI.open("https://images.rtl.fr/\~c/2000v2000/funradio/www/1533519-david-guetta-lors-de-la-64e-ceremonie-des-grammy-awards.jpg")
david.photo.attach(io: file, filename: "davidguetta.jpg", content_type: "image/jpg")
david.save

jimi = User.create!(nickname: 'Jimi-Hendrix', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'jimi.hendrix@gmail.com', password: 'jimi44', bio: "Moi c'est Jimi , je cherche rien de spécial juste a bruler ma guitare sur scene et taper de la drogue, alors si jamais ;)", experience: 2, style: "Blues", birth_date: "2000-10-03", gender: "Homme" )
file = URI.open("https://cdns-images.dzcdn.net/images/artist/2deec542fc75d5691434c407ee077ff7/500x500.jpg")
jimi.photo.attach(io: file, filename: "jimihendrix.jpg", content_type: "image/jpg")
jimi.save

eric = User.create!(nickname: 'Eric-Clapton', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'eric.clapton@gmail.com', password: 'jimi44', bio: "Hello, alors moi c'est Eric , ou God, Slow hands, ou Ewik pour les intimes, je cherche mon remplaçant et il y a plein de monde ici.", experience: 20, style: "Blues", birth_date: "2000-10-04", gender: "Homme" )
file = URI.open("https://www.larousse.fr/encyclopedie/data/images/1002428-Eric_Clapton.jpg")
eric.photo.attach(io: file, filename: "ericclapton.jpg", content_type: "image/jpg")
eric.save

kurt = User.create!(nickname: 'kurt', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'kurt.cobain@gmail.com', password: 'jimi44', bio: "Yo !! moi c'est Kurt, oui du groupe Nirvana, j'ai l'intention de me suicidé alors je cherche un autre guitariste pour mon groupe. Merci a Ztrut !! ", experience: 27, style: "Rock", birth_date: "2000-10-05", gender: "Homme" )
file = URI.open("https://images.radio-canada.ca/q_auto,w_960/v1/ici-info/16x9/kurt-cobain.jpg")
kurt.photo.attach(io: file, filename: "kurtcobain.jpg", content_type: "image/jpg")
kurt.save

bob = User.create!(nickname: 'B-Marley', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'bob.marley@gmail.com', password: 'jimi44', bio: "Moi c'est Bob Marley, chanteur et musicien jamaïcain spécialisé dans le reggae, né le 6 février 1945 à Nine Miles en Jamaïque, je cherche un bassiste.", experience: 36, style:"Reggae", birth_date: "2000-10-06", gender: "Homme" )
file = URI.open("https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/grk_ga564607_002_0.jpg?itok=eRTnsP6j")
bob.photo.attach(io: file, filename: "bobmarley.jpg", content_type: "image/jpg")
bob.save

amy = User.create!(nickname: 'Amy', instrument: 'voix', city: 'Nantes', country: 'France', email: 'amy.winehouse@gmail.com', password: 'jimmy44', bio: "Bonjour, moi c'est Amy Winehouse, chanteuse, auteure et compositrice britannique de soul, née le 14 septembre 1983 à Londres à Londres.", experience: 27, style:"Rythm&Blues", birth_date: "2000-10-07", gender: "Femme" )
file = URI.open("https://media.vogue.fr/photos/5c360db03b3a64c63eb378b5/master/w_1600%2Cc_limit/winehouse_3797.jpeg?lang=eng")
amy.photo.attach(io: file, filename: "amywinehouse.jpg", content_type: "image/jpg")
amy.save

puts "User created"

Matching1 = Matching.create!(user: david, user_two_id: jimi.id, user_one_status: "pendind", user_two_status: "pending")
Matching2 = Matching.create!(user: david, user_two_id: eric.id, user_one_status: "pendind", user_two_status: "pending")
Matching3 = Matching.create!(user: david, user_two_id: kurt.id, user_one_status: "pendind", user_two_status: "pending")
Matching4 = Matching.create!(user: david, user_two_id: bob.id, user_one_status: "pendind", user_two_status: "pending")
Matching5 = Matching.create!(user: eric, user_two_id: jimi.id, user_one_status: "pendind", user_two_status: "pending")
Matching6 = Matching.create!(user: eric, user_two_id: amy.id, user_one_status: "pendind", user_two_status: "pending")
Matching7 = Matching.create!(user: eric, user_two_id: kurt.id, user_one_status: "pendind", user_two_status: "pending")
Matching8 = Matching.create!(user: eric, user_two_id: bob.id, user_one_status: "pendind", user_two_status: "pending")
Matching9 = Matching.create!(user: jimi, user_two_id: eric.id, user_one_status: "pendind", user_two_status: "pending")
Matching10 = Matching.create!(user: jimi, user_two_id: amy.id, user_one_status: "pendind", user_two_status: "pending")
Matching11 = Matching.create!(user: jimi, user_two_id: kurt.id, user_one_status: "pendind", user_two_status: "pending")
Matching12 = Matching.create!(user: jimi, user_two_id: bob.id, user_one_status: "pendind", user_two_status: "pending")

puts "Matching created"
