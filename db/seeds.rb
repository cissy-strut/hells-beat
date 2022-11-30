puts "Cleaning up database..."

User.destroy_all
Message.destroy_all
Matching.destroy_all
Chatroom.destroy_all

puts "Database cleaned"

strut33 = User.create!(pseudo: 'strut33', instrument: 'platines', city: 'Nantes', country: 'France', email: 'strut33@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment sympa", experience: 17, style: "Rock", birth_date: "1980-9-24", gender: "Homme" )

jimi = User.create!(pseudo: 'jimi', instrument: 'guitare', city: 'Nantes', country: 'France', email: 'jimi.hendrix@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment bien", experience: 2, style: "classique", birth_date: "2000-10-03", gender: "Homme" )

eric = User.create!(pseudo: 'eric', instrument: 'piano', city: 'Bordeaux', country: 'France', email: 'eric.clapton@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment trop cool", experience: 20, style: "rock", birth_date: "2000-10-04", gender: "Homme" )

kurt = User.create!(pseudo: 'kurt', instrument: 'triangle', city: 'Toulouse', country: 'France', email: 'kurt.cobain@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment incroyable", experience: 27, style: "rock", birth_date: "2000-10-05", gender: "Homme" )

bob = User.create!(pseudo: 'bob', instrument: 'guitare', city: 'Rennes', country: 'France', email: 'bob.marley@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment génial", experience: 36, style:"reggae", birth_date: "2000-10-06", gender: "Homme" )
# file = URI.open("https://www.telerama.fr/sites/tr_master/files/styles/simplecrop1000/public/grk_ga564607_002_0.jpg?itok=eRTnsP6j")
# bob.photo.attach(io: file, filename: "bobmarleye.jpg", content_type: "image/jpeg")
require "open-uri"

amy = User.create!(pseudo: 'amy', instrument: 'voix', city: 'Montpellier', country: 'France', email: 'amy.winehouse@gmail.com', password: 'jimmy44', bio: "la musique c'est vraiment fantastique", experience: 27, style:"soul", birth_date: "2000-10-07", gender: "Femme" )
# amy = User.new(title: "Amy", body: "Amy winehouse")
# file = URI.open("https://media.vogue.fr/photos/5c360db03b3a64c63eb378b5/master/w_1600%2Cc_limit/winehouse_3797.jpeg?lang=eng")
# amy.photo.attach(io: file, filename: "amywinehouse.jpg", content_type: "image/jpeg")


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
