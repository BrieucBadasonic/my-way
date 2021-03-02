# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open_uri"

puts "Creating 20 users..."
user1 = User.new(username: "Brieuc",
                 first_name: "Brieuc",
                 last_name: "Labiouse",
                 email: "brieuc@gmail.com",
                 password: "123456")
user1.save!
file = URI.open('')
user1.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user2 = User.new(username: "Marcel",
                 first_name: "Marcel",
                 last_name: "Feindt",
                 email: "marcel@gmail.com",
                 password: "123456")
user2.save!
file = URI.open('')
user2.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user3 = User.new(username: "Ishany",
                 first_name: "Ishany",
                 last_name: "Baldir",
                 email: "ishany@gmail.com",
                 password: "123456")
user3.save!
file = URI.open('')
user3.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user4 = User.new(username: "Lisbeth",
                 first_name: "Lisbeth",
                 last_name: "Purucker",
                 email: "lisbeth@gmail.com",
                 password: "123456")
user4.save!
file = URI.open('')
user4.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user5 = User.new(username: "Avril",
                 first_name: "Avril",
                 last_name: "Pryce",
                 email: "avril@gmail.com",
                 password: "123456")
user5.save!
file = URI.open('')
user5.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user6 = User.new(username: "Fabian",
                 first_name: "Fabian",
                 last_name: "Schröder",
                 email: "fabi@gmail.com",
                 password: "123456")
user6.save!
file = URI.open('')
user6.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user7 = User.new(username: "Fernando",
                 first_name: "Fernando",
                 last_name: "Nascimento",
                 email: "ferdi@gmail.com",
                 password: "123456")
user7.save!
file = URI.open('')
user7.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user8 = User.new(username: "Hannah",
                 first_name: "Hannah",
                 last_name: "Voget",
                 email: "hannah@gmail.com",
                 password: "123456")
user8.save!
file = URI.open('')
user8.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user9 = User.new(username: "Santiago",
                 first_name: "Santiago",
                 last_name: "Sanchez",
                 email: "santi@gmail.com",
                 password: "123456")
user9.save!
file = URI.open('')
user9.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user10 = User.new(username: "Valerie",
                 first_name: "Valerie",
                 last_name: "Schraauwers",
                 email: "vali@gmail.com",
                 password: "123456")
user10.save!
file = URI.open('')
user10.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user11 = User.new(username: "Sarah",
                 first_name: "Sarah",
                 last_name: "O'Grady",
                 email: "sarah@gmail.com",
                 password: "123456")
user11.save!
file = URI.open('')
user11.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user12 = User.new(username: "Suzanna",
                 first_name: "Suzanna",
                 last_name: "Fillipowska",
                 email: "suzi@me.com",
                 password: "123456")
user12.save!
file = URI.open('')
user12.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user13 = User.new(username: "Daniel",
                 first_name: "Daniel",
                 last_name: "Frieske",
                 email: "daniel@me.com",
                 password: "123456")
user13.save!
file = URI.open('')
user13.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user14 = User.new(username: "Stefan",
                 first_name: "Stefan",
                 last_name: "Koch",
                 email: "stefan@me.com",
                 password: "123456")
user14.save!
file = URI.open('')
user14.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user15 = User.new(username: "Jonathan",
                 first_name: "Jonathan",
                 last_name: "Jakob",
                 email: "johnny@me.com",
                 password: "123456")
user15.save!
file = URI.open('')
user15.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user16 = User.new(username: "Max",
                 first_name: "Max",
                 last_name: "Keller",
                 email: "max@me.com",
                 password: "123456")
user16.save!
file = URI.open('')
user16.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user17 = User.new(username: "Margaux",
                 first_name: "Margaux",
                 last_name: "Palvini",
                 email: "magie@me.com",
                 password: "123456")
user17.save!
file = URI.open('')
user17.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user18 = User.new(username: "Euan",
                 first_name: "Euan",
                 last_name: "Gillespie-Taylor",
                 email: "euan@aol.com",
                 password: "123456")
user18.save!
file = URI.open('')
user18.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user19 = User.new(username: "Thomas",
                 first_name: "Thomas",
                 last_name: "Pietschmann",
                 email: "tommy@me.com",
                 password: "123456")
user19.save!
file = URI.open('')
user19.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')

user20 = User.new(username: "Begana",
                 first_name: "Begana",
                 last_name: "Choi",
                 email: "begi@me.com",
                 password: "123456")
user20.save!
file = URI.open('')
user20.photo.attach(io: file, filename: 'avatar.jpg', content_type: 'image/jpg')














