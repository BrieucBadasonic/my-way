# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open_uri"

puts "Creating 20 gardens..."

garden1 = User.new(name: "Wallnut Garden",
                   description: "Welcome to our beatifull garden, where you can stay under the walnut tree. On sunny days you can enjoy our natural swimming pool and an outdoor shower.",
                   address: "Lindenallee 8 15834 Rangsdorf",
                   tent_capacity: 1,
                   user_id: 1)
garden1.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618643/garden%20seeds/garden_1_ej4v2t.jpg')
garden1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden2 = User.new(name: "Trees and Vegetables",
                   description: "Large garden with park trees and vegetable garden. Camp places in the sun or in the shade. Firewood, fire bowl, chairs and table available.",
                   address: "Sperenberg 15838 Am Mellensee",
                   tent_capacity: 4,
                   user_id: 2)
garden2.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618626/garden%20seeds/garden_2_wj51e5.jpg')
garden2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden3 = User.new(name: "Hilly Garden",
                   description: "Non-landscaped garden in rural area with nice play hill, within walking distance of shops and eateries. When we are at home, the toilet can be used ;-).",
                   address: "Dorfstraße 7 04936 Dahme/Mark",
                   tent_capacity: 4,
                   user_id: 3)
garden3.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618627/garden%20seeds/garden_3_o5nbhy.jpg')
garden3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden4 = User.new(name: "A lot of Privacy",
                   description: "Enclosed garden with lots of shade from trees. Camping spot 100m from the house. A lot of privacy. Table and chairs available." ,
                   address: "Werenzhainer Hauptstraße 03253 Doberlug-Kirchhain",
                   tent_capacity: 5,
                   user_id: 4)
garden4.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618625/garden%20seeds/garden_4_aqeghk.jpg')
garden4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden5 = User.new(name: "Wildlife and Chickem",
                   description: "Quiet and wide wildlife (maintained) private garden. Chickens (separate) and sweet dog (labrador).",
                   address: "Lauchhammer 01979",
                   tent_capacity: 3,
                   user_id: 5)
garden5.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618626/garden%20seeds/garden_5_lyevu8.jpg')
garden5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden6 = User.new(name: "Shade, sheeps and chicken",
                   description: "Welcome in our garden on our lawn or close to the sheep and chickens! Shade for little tents. Little playground, trampoline, sandplay.",
                   address: "Dorfstraße 12 01561 Thiendorf",
                   tent_capacity: 2,
                   user_id: 6)
garden6.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618625/garden%20seeds/garden_6_musotu.jpg')
garden6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden7 = User.new(name: "Bee Garden",
                   description: "Garden surrounded by flowers, a beehive, a little creek, birds and squirrels...welcome! Not to forget a sweet, but curious dog named Layko",
                   address: "Waldteichstraße 5 01471 Radeburg",
                   tent_capacity: 2,
                   user_id: 7)
garden7.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618626/garden%20seeds/garden_7_sjntuo.jpg')
garden7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden8 = User.new(name: "Nature lovers",
                   description: "We live in respect with nature, so deers or chickens might wake you in the morning.",
                   address: "Bärnsdorfer Hauptstraße 6 01471 Radeburg",
                   tent_capacity: 1,
                   user_id: 8)
garden8.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618627/garden%20seeds/garden_8_gtjnec.jpg')
garden8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden9 = User.new(name: "Garden in the Fields",
                   description: "We have a nice garden surrounded by fields. There is a fridge and microwave oven in our shed that you can use. We also have chairs and a table in our garden.",
                   address: "Hospitalstraße 01471 Radeburg",
                   tent_capacity: 2,
                   user_id: 9)
garden9.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618628/garden%20seeds/garden_9_wxxyvo.jpg')
garden9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden10 = User.new(name: "Eco Garden",
                   description: "Wild garden with bonfire, eco-toilet, swimming pond and hammock",
                   address: "Kleinnaundorf 01561 Tauscha",
                   tent_capacity: 3,
                   user_id: 10)
garden10.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618627/garden%20seeds/garden_10_y0iqeh.jpg')
garden10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden11 = User.new(name: "Cherry tree Garden",
                   description: "The garden in the backyard of our home. Behind the garden is a wei with some old cherry and pear trees.",
                   address: "",
                   tent_capacity: ,
                   user_id: 11)
garden11.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618628/garden%20seeds/garden_11_f5gbji.jpg')
garden11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden12 = User.new(name: "Wild tree and hammocks",
                   description: "Some wild trees and bushes on top of a small hill perfect to put some tents or some hammocks in between. The trees give a lot of privacy from the surrounding houses.",
                   address: "Mühlbach 01561 Lampertswalde",
                   tent_capacity: 3,
                   user_id: 12)
garden12.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_12_btc4n1.jpg')
garden12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden13 = User.new(name: "Campfire garden",
                   description: "Acces to water and power even when host is not there. But i wish i will be there to chat drink and play music around the campfire.",
                   address: "Ponickau 01561 Thiendorf",
                   tent_capacity: 4,
                   user_id: 13)
garden13.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618629/garden%20seeds/garden_13_sg0ec8.jpg')
garden13.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden14 = User.new(name: "River garden",
                   description: "surrounding by trees , very small river along the garden.",
                   address: "Tannenweg 90-93 01990 Großkmehlen",
                   tent_capacity: 2,
                   user_id: 14)
garden14.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_14_q6qx73.jpg')
garden14.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden15 = User.new(name: "Garden in the countryside",
                   description: "We can accomodate you in our nice garden at the countryside. We will be delighted to share a glass and chat a little bit if we have some time.",
                   address: "Kroppen 01945",
                   tent_capacity: 2,
                   user_id: 15)
garden15.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_15_g1svdq.jpg')
garden15.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden16 = User.new(name: "Familly Garden",
                   description: "We propose 1 pitch for a family tent. The ground is slightly sloping.",
                   address: "Plessaer Str. 1 04928 Schraden",
                   tent_capacity: 1,
                   user_id: 16)
garden16.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_16_eqi7w5.jpg')
garden16.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden17 = User.new(name: "Hill Garden",
                   description: "Bushy garden on the hill. Not perfectly flat but nice. Steep climb to reach your destination ... ",
                   address: "Seestraße 9 01979 Lauchhammer",
                   tent_capacity: 2,
                   user_id: 17)
garden17.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618638/garden%20seeds/garden_17_xnxov2.png')
garden17.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden18 = User.new(name: "Quiet Garden",
                   description: "A very natural and quiet garden",
                   address: "Finsterwalder Str. 11 03253 Doberlug-Kirchhain",
                   tent_capacity: 2,
                   user_id: 18)
garden18.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618639/garden%20seeds/garden_18_kyhgoh.jpg')
garden18.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden19 = User.new(name: "Big garden and BBQ",
                   description: "We have a big garden with camping spots in the shade. A barbecue is available for hosts.",
                   address: "Luckauer Str. 9 15936 Dahme/Mark",
                   tent_capacity: 5,
                   user_id: 19)
garden19.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618634/garden%20seeds/garden_19_jtkukv.jpg')
garden19.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

garden20 = User.new(name: "Little savage Garden",
                   description: "Welcome in my little savage garden behind the house",
                   address: "Stechau 04936 Fichtwald",
                   tent_capacity: 1,
                   user_id: 20)
garden20.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618637/garden%20seeds/garden_20_fbpjts.jpg')
garden20.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')
