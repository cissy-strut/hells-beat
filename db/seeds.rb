puts "Cleaning up database..."

User.destroy_all
Message.destroy_all
Matching.destroy_all
Chatroom.destroy_all

puts "Database cleaned"

strut33 = User.create!(nickname: 'strut33', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'strut33@gmail.com', password: 'jimmydu44', bio: "la musique c'est vraiment sympa", experience: 27, style: "Rock", birth_date: "1980-9-24", gender: "Homme" )
# jlmrie = Users.create!(first_name: 'johann', last_name: 'LEMARIE', user_name: 'jlmrie', email: 'jlmrie@gmail.com', password: '6404perezM')
# etienne40 = Users.create!(first_name: 'etienne', last_name: 'BOURRINET', user_name: 'etienne40', email: 'etienne.bourrinet40@gmail.com', password: '6404perezM')
jimmy = User.create!(nickname: 'jimi', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'jimi.hendrix@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment bien", experience: 2, style: "classique", birth_date: "2000-10-03", gender: "Homme" )
# file = URI.open("https://www.studio1822.fr/wp-content/uploads/2018/05/portrait_musicien_Flavien_Bassimon__Flutiste__05-3.jpg")
# user1.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
eric = User.create!(nickname: 'eric', instrument: 'piano', city: 'Bordeaux', country: 'France', email: 'eric.clapton@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment trop cool", experience: 20, style: "rock", birth_date: "2000-10-04", gender: "Homme" )
# file = URI.open("https://sweetspot-guitars.de/en/wp-content/uploads/sites/2/2021/01/1963-Fender-Stratocaster-03.jpg")
# instrument2.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
kurt = User.create!(nickname: 'kurt', instrument: 'triangle', city: 'Toulouse', country: 'France', email: 'kurt.cobain@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment incroyable", experience: 27, style: "rock", birth_date: "2000-10-05", gender: "Homme" )
# instrument3 = Instrument.create!(irst_name: 'casio', last_name: 'PX-S7000 HM', nickname: 'synthetiseur', instrument: 2022, color: 'yellow', price_per_day: 40, location: 'Nantes')
# file = URI.open("https://th.static-thomann.de/thumb/padthumb600x600/pics/bdb/551707/17585495_800.jpg")
# instrument3.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
bob = User.create!(nickname: 'bob', instrument: 'guitare', city: 'Rennes', country: 'France', email: 'bob.marley@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment génial", experience: 36, style:"reggae", birth_date: "2000-10-06", gender: "Homme" )
# instrument4 = Instrument.create!(irst_name: 'fender', last_name: 'jazz-bass', nickname: 'bass', instrument: 1972, color: 'olympic-white', price_per_day: 230, location: 'Nimes')
# file = URI.open("https://www.vintageandrare.com/uploads/products/68741/3522552/original.jpg?1668547141")
# instrument4.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
amy = User.create!(nickname: 'amy', instrument: 'voix', city: 'Montpellier', country: 'France', email: 'amy.winehouse@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment fantastique", experience: 27, style:"soul", birth_date: "2000-10-07", gender: "Femme" )
# instrument5 = Instrument.create!(, first_name: 'martin', last_name: '000', nickname: 'guitar', instrument: 1956, color: 'rosewood', price_per_day: 200, location: 'Arles')
# file = URI.open("https://cdn.shopify.com/s/files/1/0452/1387/6381/products/98e963251bed7cb874f162b2ac41152d_800x.jpg?v=1661979522")
# instrument5.photo.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")


# rental1 = Rental.create!(instrument: instrument8, start_date: "2022-11-22", end_date: "2022-11-24", total_price:600, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Sylvain")
# rental2 = Rental.create!(instrument: instrument7, start_date: "2021-02-23", end_date: "2021-02-25", total_price:24000, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Sylvain")
# rental3 = Rental.create!(nstrument: instrument6, start_date: "2023-04-12", end_date: "2023-04-14", total_price:160, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Johann")
# rental4 = Rental.create!(nstrument: instrument5, start_date: "2022-04-02", end_date: "2022-04-04", total_price:400, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Johann")
# rental5 = Rental.create!(, instrument: instrument4, start_date: "2020-04-19", end_date: "2020-04-21", total_price:460, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Etienne")
# rental6 = Rental.create!(, instrument: instrument3, start_date: "2023-04-23", end_date: "2023-04-25", total_price:80, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Etienne")
# rental7 = Rental.create!(assercheztoi, instrument: instrument2, start_date: "2023-04-29", end_date: "2023-05-01", total_price:1000, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Jean-Michel")
# rental8 = Rental.create!(assercheztoi, instrument: instrument1, start_date: "2023-04-15", end_date: "2023-04-17", total_price:600, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Jean-Michel")
# rental9 = Rental.create!(nstrument: instrument1, start_date: "2023-04-23", end_date: "2023-04-25", total_price:1000, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Johann")
# rental10 = Rental.create!(assercheztoi, instrument: instrument2, start_date: "2022-04-23", end_date: "2022-04-25", total_price:600, acceptation:"en-attente", message_to_owner:"bonjour merci d'accepter ma demande de reservation, cordialement Jean-Michel")

# puts "rentals created"
