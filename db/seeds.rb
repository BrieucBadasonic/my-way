# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning DB..."
Facility.destroy_all
GardenFacility.destroy_all
Garden.destroy_all

User.destroy_all
puts "Creating 21 users..."

user1 = User.new(username: "Brieuc",
                 first_name: "Brieuc",
                 last_name: "Labiouse",
                 email: "brieuc@gmail.com",
                 password: "123456")
user1.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620754/user%20seed%20my%20way/Brieuc_Labiouse_ppbduo.jpg')
user1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "1/21"

user2 = User.new(username: "Marcel",
                 first_name: "Marcel",
                 last_name: "Feindt",
                 email: "marcel@gmail.com",
                 password: "123456")
user2.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620755/user%20seed%20my%20way/Marcel_Feindt_wajrek.jpg')
user2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "2/21"

user3 = User.new(username: "Ishany",
                 first_name: "Ishany",
                 last_name: "Balder",
                 email: "ishany@gmail.com",
                 password: "123456")
user3.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620753/user%20seed%20my%20way/Ishany_Balder_epfozp.jpg')
user3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "3/21"

user4 = User.new(username: "Lisbeth",
                 first_name: "Lisbeth",
                 last_name: "Purucker",
                 email: "lisbeth@gmail.com",
                 password: "123456")
user4.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620755/user%20seed%20my%20way/Lisbeth_Purrucker_azsr1f.jpg')
user4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "4/21"

user5 = User.new(username: "Avril",
                 first_name: "Avril",
                 last_name: "Pryce",
                 email: "avril@gmail.com",
                 password: "123456")
user5.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620758/user%20seed%20my%20way/Avril_Pryce_etnxxv.png')
user5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "5/21"

user6 = User.new(username: "Fabian",
                 first_name: "Fabian",
                 last_name: "Schröder",
                 email: "fabi@gmail.com",
                 password: "123456")
user6.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620752/user%20seed%20my%20way/Fabian_Schr%C3%B6der_n2cmrw.jpg')
user6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "6/21"

user7 = User.new(username: "Fernando",
                 first_name: "Fernando",
                 last_name: "Nascimento",
                 email: "ferdi@gmail.com",
                 password: "123456")
user7.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620752/user%20seed%20my%20way/Fernando_Nascimento_xewhun.jpg')
user7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "7/21"

user8 = User.new(username: "Hannah",
                 first_name: "Hannah",
                 last_name: "Voget",
                 email: "hannah@gmail.com",
                 password: "123456")
user8.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620753/user%20seed%20my%20way/Hannah_Voget_pssw1n.jpg')
user8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "8/21"

user9 = User.new(username: "Santi",
                 first_name: "Santiago",
                 last_name: "Sanchez",
                 email: "santi@gmail.com",
                 password: "123456")
user9.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620756/user%20seed%20my%20way/Santiago_Sanchez_pdpb4d.jpg')
user9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "9/21"

user10 = User.new(username: "Valerie",
                 first_name: "Valerie",
                 last_name: "Schraauwers",
                 email: "vali@gmail.com",
                 password: "123456")
user10.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620761/user%20seed%20my%20way/Valerie_Shrauuwers_qc9vkh.png')
user10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "10/21"

user11 = User.new(username: "Sarah",
                 first_name: "Sarah",
                 last_name: "O'Grady",
                 email: "sarah@gmail.com",
                 password: "123456")
user11.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620757/user%20seed%20my%20way/Sarah_O_Grady_dnlb5r.jpg')
user11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "11/21"

user12 = User.new(username: "Suzanna",
                 first_name: "Suzanna",
                 last_name: "Fillipowska",
                 email: "suzi@me.com",
                 password: "123456")
user12.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620758/user%20seed%20my%20way/Suzanna_Filipowska_g5u6sw.jpg')
user12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "12/21"

user13 = User.new(username: "Daniel",
                 first_name: "Daniel",
                 last_name: "Frieske",
                 email: "daniel@me.com",
                 password: "123456")
user13.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620752/user%20seed%20my%20way/Daniel_Frieske_q1jmlv.jpg')
user13.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "13/21"

user14 = User.new(username: "Stefan",
                 first_name: "Stefan",
                 last_name: "Koch",
                 email: "stefan@me.com",
                 password: "123456")
user14.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620757/user%20seed%20my%20way/Stefan_Koch_c6bfxp.jpg')
user14.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "14/21"

user15 = User.new(username: "Jonathan",
                 first_name: "Jonathan",
                 last_name: "Jakob",
                 email: "johnny@me.com",
                 password: "123456")
user15.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620754/user%20seed%20my%20way/Jonathan_Jacob_hck07l.jpg')
user15.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "15/21"

user16 = User.new(username: "Max",
                 first_name: "Max",
                 last_name: "Keller",
                 email: "max@me.com",
                 password: "123456")
user16.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620755/user%20seed%20my%20way/Max_Keller_wxuzf4.jpg')
user16.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "16/21"

user17 = User.new(username: "Margaux",
                 first_name: "Margaux",
                 last_name: "Palvini",
                 email: "magie@me.com",
                 password: "123456")
user17.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620755/user%20seed%20my%20way/Margaux_Palvini_uwrbtl.jpg')
user17.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "17/21"

user18 = User.new(username: "Euan",
                 first_name: "Euan",
                 last_name: "Gillespie-Taylor",
                 email: "euan@aol.com",
                 password: "123456")
user18.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620757/user%20seed%20my%20way/Euan_Gillespie-Taylor_wsz3ir.png')
user18.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "18/21"

user19 = User.new(username: "Thomas",
                 first_name: "Thomas",
                 last_name: "Pietschmann",
                 email: "tommy@me.com",
                 password: "123456")
user19.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620757/user%20seed%20my%20way/Thomas_Pietschmann_n2grty.jpg')
user19.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "19/21"

user20 = User.new(username: "Begana",
                 first_name: "Begana",
                 last_name: "Choi",
                 email: "begi@me.com",
                 password: "123456")
user20.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614620754/user%20seed%20my%20way/Begana_Choi_rrc2kp.jpg')
user20.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "20/21"

user21 = User.new(username: "Nic",
                 first_name: "Nicolas",
                 last_name: "Dhoedt",
                 email: "nic@me.com",
                 password: "123456")
user21.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614621244/user%20seed%20my%20way/Nic_ghuu4l.jpg')
user21.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "21/21"
puts "Creating 20 gardens..."

garden1 = Garden.new(name: "Wallnut Garden",
                   description: "Welcome to our beatifull garden, where you can stay under the walnut tree. On sunny days you can enjoy our natural swimming pool and an outdoor shower.",
                   address: "Seekorso 45, 15754 Heidesee",
                   tent_capacity: 1,
                   user: user2)
garden1.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618643/garden%20seeds/garden_1_ej4v2t.jpg')
garden1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "1/20"

garden2 = Garden.new(name: "Shade, Sheeps and Chicken",
                   description: "Large garden with park trees and vegetable garden. Camp places in the sun or in the shade. Firewood, fire bowl, chairs and table available.",
                   address: "Sperenberg, 15838 Am Mellensee",
                   tent_capacity: 4,
                   user: user3)
garden2.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618626/garden%20seeds/garden_2_wj51e5.jpg')
garden2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "2/20"

garden3 = Garden.new(name: "Hilly Garden",
                   description: "Non-landscaped garden in rural area with nice play hill, within walking distance of shops and eateries. We never travelled by bike, but would really like to try.",
                   address: "Hauptstraße 5, 04932 Röderland",
                   tent_capacity: 4,
                   user: user21)
garden3.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1615455040/garden%20seeds/hilly-garden_d22cby.jpg')
garden3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "3/20"

garden4 = Garden.new(name: "A lot of Privacy",
                   description: "Enclosed garden with lots of shade from trees. Camping spot 100m from the house. A lot of privacy. Table and chairs available." ,
                   address: "Lindenstraße 4-8, 03222 Lübbenau/Spreewald",
                   tent_capacity: 5,
                   user: user5)
garden4.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618625/garden%20seeds/garden_4_aqeghk.jpg')
garden4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "4/20"

garden5 = Garden.new(name: "Wildlife and Chicken",
                   description: "Quiet and wide wildlife (maintained) private garden. Chickens (separate) and sweet dog (labrador).",
                   address: "Lauchhammer, 01979",
                   tent_capacity: 3,
                   user: user6)
garden5.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618626/garden%20seeds/garden_5_lyevu8.jpg')
garden5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "5/20"

garden6 = Garden.new(name: "Tree and Vegetables",
                   description: "Welcome in our garden on our lawn or close to the sheep and chickens! Shade for little tents. Little playground, trampoline, sandplay.",
                   address: "Am Klosterbach 32, 09326 Geringswalde",
                   tent_capacity: 2,
                   user: user7)
garden6.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618625/garden%20seeds/garden_6_musotu.jpg')
garden6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "6/20"

garden7 = Garden.new(name: "Bee Garden",
                   description: "Garden surrounded by flowers, a beehive, a little creek, birds and squirrels...welcome! Not to forget a sweet, but curious dog named Layko",
                   address: "Waldteichstraße 5, 01471 Radeburg",
                   tent_capacity: 2,
                   user: user8)
garden7.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618626/garden%20seeds/garden_7_sjntuo.jpg')
garden7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "7/20"

garden8 = Garden.new(name: "Nature Lovers",
                   description: "We live in respect with nature, so deers or chickens might wake you in the morning.",
                   address: "Limbacher Str. 11, 01723 Wilsdruff",
                   tent_capacity: 1,
                   user: user9)
garden8.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618627/garden%20seeds/garden_8_gtjnec.jpg')
garden8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "8/20"

garden9 = Garden.new(name: "Garden in the Fields",
                   description: "We have a nice garden surrounded by fields. There is a fridge and microwave oven in our shed that you can use. We also have chairs and a table in our garden.",
                   address: "Kohlgrundweg 21, 01773 Altenberg",
                   tent_capacity: 2,
                   user: user10)
garden9.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618628/garden%20seeds/garden_9_wxxyvo.jpg')
garden9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "9/20"

garden10 = Garden.new(name: "Eco Garden",
                   description: "Wild garden with bonfire, eco-toilet, swimming pond and hammock",
                   address: "August-Ferdinand-Anacker-Str. 21, 09599 Freiberg",
                   tent_capacity: 3,
                   user: user11)
garden10.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618627/garden%20seeds/garden_10_y0iqeh.jpg')
garden10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "10/20"

garden11 = Garden.new(name: "Cherry Tree Garden",
                   description: "The garden is in the backyard of our house. There is some old cherry trees providing shadow. I'm a bike traveller enthusiast and always happy to share experiences.",
                   address: "Damsdorf, 15938 Steinreich",
                   tent_capacity: 3,
                   user: user12)
garden11.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1615455039/garden%20seeds/cherry-tree-garden_lhiwwk.jpg')
garden11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "11/20"

garden12 = Garden.new(name: "Wild Tree and Hammocks",
                   description: "Some wild trees and bushes on top of a small hill perfect to put some tents or some hammocks in between. The trees give a lot of privacy from the surrounding houses.",
                   address: "Radlubinstraße 34, 01920 Ralbitz-Rosenthal",
                   tent_capacity: 3,
                   user: user13)
garden12.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_12_btc4n1.jpg')
garden12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "12/20"

garden13 = Garden.new(name: "Campfire Garden",
                   description: "Acces to water and power even when host is not there. But i wish i will be there to chat drink and play music around the campfire.",
                   address: "Stolpener Str. 16-21, 01877 Bischofswerda",
                   tent_capacity: 4,
                   user: user14)
garden13.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618629/garden%20seeds/garden_13_sg0ec8.jpg')
garden13.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "13/20"

garden14 = Garden.new(name: "River Garden",
                   description: "surrounding by trees , very small river along the garden.",
                   address: "Abfindungen Weg 4, 209 04860 Torgau",
                   tent_capacity: 2,
                   user: user15)
garden14.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_14_q6qx73.jpg')
garden14.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "14/20"

garden15 = Garden.new(name: "Garden in the Countryside",
                   description: "We can accomodate you in our nice garden at the countryside. We will be delighted to share a glass and chat a little bit if we have some time.",
                   address: "Felgenhauerstraße 55, 01589 Riesa",
                   tent_capacity: 2,
                   user: user16)
garden15.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_15_g1svdq.jpg')
garden15.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "15/20"

garden16 = Garden.new(name: "Family Garden",
                   description: "We propose 1 pitch for a family tent. The ground is slightly sloping.",
                   address: "Ernst-Thälmann-Straße 8, 02906 Niesky",
                   tent_capacity: 1,
                   user: user17)
garden16.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618630/garden%20seeds/garden_16_eqi7w5.jpg')
garden16.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "16/20"

garden17 = Garden.new(name: "Hill Garden",
                   description: "Bushy garden on the hill. Not perfectly flat but nice. Steep climb to reach your destination ... ",
                   address: "Dorfstraße 7, 04936 Dahme/Mark",
                   tent_capacity: 2,
                   user: user18)
garden17.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618638/garden%20seeds/garden_17_xnxov2.png')
garden17.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "17/20"

garden18 = Garden.new(name: "Quiet Garden",
                   description: "A very natural and quiet garden",
                   address: "Kurländer Allee 26A, 14055 Berlin",
                   tent_capacity: 2,
                   user: user19)
garden18.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618639/garden%20seeds/garden_18_kyhgoh.jpg')
garden18.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "18/20"

garden19 = Garden.new(name: "Big Garden and BBQ",
                   description: "We have a big garden with camping spots in the shade. A barbecue is available for hosts.",
                   address: "Str. zum Campingpl. 8, 15748 Märkisch Buchholz",
                   tent_capacity: 5,
                   user: user20)
garden19.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618634/garden%20seeds/garden_19_jtkukv.jpg')
garden19.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "19/20"

garden20 = Garden.new(name: "Little Savage Garden",
                   description: "Welcome in my little savage garden behind the house",
                   address: "Stechau, 04936 Fichtwald",
                   tent_capacity: 1,
                   user: user4)
garden20.save!
file = URI.open('https://res.cloudinary.com/duogrvvdx/image/upload/v1614618637/garden%20seeds/garden_20_fbpjts.jpg')
garden20.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

puts "20/20"


puts "Creating 7 facilities..."

shower = Facility.create(name: "shower")
file = File.open("app/assets/images/icons/chip_garden/shower.svg")
shower.image.attach(io: file, filename: 'shower.svg', content_type: 'image/svg')
shower.save!

toilet = Facility.create(name: "toilet")
file = File.open("app/assets/images/icons/chip_garden/toilet.svg")
toilet.image.attach(io: file, filename: 'toilet.svg', content_type: 'image/svg')
toilet.save!

bbq = Facility.create(name: "bbq")
file = File.open("app/assets/images/icons/chip_garden/bbq.svg")
bbq.image.attach(io: file, filename: 'bbq.svg', content_type: 'image/svg')
bbq.save!

bonfire = Facility.create(name: "bonfire")
file = File.open("app/assets/images/icons/chip_garden/fire-pit.svg")
bonfire.image.attach(io: file, filename: 'fire-pit.svg', content_type: 'image/svg')
bonfire.save!

electricity = Facility.create(name: "power")
file = File.open("app/assets/images/icons/chip_garden/electricity.svg")
electricity.image.attach(io: file, filename: 'electricity.svg', content_type: 'image/svg')
electricity.save!

water = Facility.create(name: "water")
file = File.open("app/assets/images/icons/chip_garden/water.svg")
water.image.attach(io: file, filename: 'water.svg', content_type: 'image/svg')
water.save!

wifi = Facility.create(name: "wifi")
file = File.open("app/assets/images/icons/chip_garden/wifi.svg")
wifi.image.attach(io: file, filename: 'wifi.svg', content_type: 'image/svg')
wifi.save!

pet_allowed = Facility.create(name: "pets")
file = File.open("app/assets/images/icons/chip_garden/pet-allowed.svg")
pet_allowed.image.attach(io: file, filename: 'pet-allowed.svg', content_type: 'image/svg')
pet_allowed.save!

facilities = [shower, toilet, bbq, bonfire, electricity, water, wifi, pet_allowed]

puts "Assign a random amount of facility to gardens"

Garden.all.each do |garden|
  facilities_array = []
  rand(1..10).times do
      facilities_array << facilities.sample
  end
  facilities_array.uniq.each { |facility| GardenFacility.create(garden: garden, facility: facility) }
end

puts "create a general chatroom"

Chatroom.create(name: "general")

puts "21 users and 20 gardens with garden facilities had been created..."
puts "You are amazing, we are going to build a super cool app!"
