module IconHelper
  INSTRUMENTS = {
     guitare: "guit.png",
     piano: "key.png",
     basse: "bass.png",
     voix: "mic.png",
     sax: "sax.png",
     batterie: "drum.png"
  }

  def user_instrument(user)

    image_tag(INSTRUMENTS[user.instrument.downcase.to_sym])
  end
end
