# This file should contain all the record creation needed to  the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"


print "Cleaning..."

Location.destroy_all
Dream.destroy_all
Category.destroy_all
User.destroy_all
puts "done !"

print "creating category..."
categories = %w[horror romantic coding travel eating sport concerts retirement time gladiator movie erotic]
categories.each do |category|
  Category.create!(name: category)
end

puts "done!"

print "creating users..."
users = %w[yuhecny edgar concorde estelle]
users.each do |user|
  User.create!(
    email: "#{user}@gmail.com",
    password: "123456"
  )
end

puts "done!"
print "creating horror dreams..."
all_dreams = [
  Dream.create!(
    name: "Perdu dans les bois",
    description: "Tu es perdu dans les bois, seul(e) et tu rencontre le grand méchant loup qui veut te manger. Heureusement tu es sauvé par une famille de cochons",
    price: 50,
    duration: 45,
    category: Category.find_by(name: "horror"),
    user: User.find_by(email: "yuhecny@gmail.com")
  ),


  Dream.create!(
    name: "J'ai perdu mes dents",
    description: "Je me réveille avec une drôle sensation dans la bouche, toutes mes dents ont disparues !",
    price: 500,
    duration: 2,
    category: Category.find_by(name: "horror"),
    user: User.find_by(email: "yuhecny@gmail.com")
  ),


  Dream.create!(
    name: "Coder une application en une journée",
    description: "De viens un super développeur en codant une applicattion complète en seulement une journée",
    price: 1000,
    duration: 2,
    category: Category.find_by(name: "coding"),
    user: User.find_by(email: "estelle@gmail.com")
  ),

  Dream.create!(
    name: "Une vie de code",
    description: "tu es le meilleur développeur web",
    price: 45,
    duration: 2,
    category: Category.find_by(name: "coding"),
    user: User.find_by(email: "estelle@gmail.com")
  ),

  Dream.create!(
    name: "Les dates parfaites",
    description: "Participe à cinq dates en une journée avec cinq personnes différentes",
    price: 150,
    duration: 5,
    category: Category.find_by(name: "romantic"),
    user: User.find_by(email: "edgar@gmail.com")
  ),


  Dream.create!(
    name: "Mariage avec un chat",
    description: "Coup de foudre avec le plus beau des chats, tu décides de te marier avec lui tout de suite",
    price: 100,
    duration: 2,
    category: Category.find_by(name: "romantic"),
    user: User.find_by(email: "edgar@gmail.com")
  ),

  Dream.create!(
    name: "Voyage en Thaïland",
    description: "Un weekend sur les plages thaïlandaises en bonne compagnie",
    price: 500,
    duration: 4,
    category: Category.find_by(name: "travel"),
    user: User.find_by(email: "concorde@gmail.com")
  ),

  Dream.create!(
    name: "Voyager à travers l'Europe",
    description: "Tu pars en voyage avec tes amis pour visiter tous les pays d'Europe",
    price: 40,
    duration: 4,
    category: Category.find_by(name: "travel"),
    user: User.find_by(email: "concorde@gmail.com")
  ),

  Dream.create!(
    name: "Tout manger",
    description: "Tu passes toute la journée à manger tes plats préférés jusqu'à épuisement ",
    price: 60,
    duration: 4,
    category: Category.find_by(name: "eating"),
    user: User.find_by(email: "concorde@gmail.com")
  ),

  Dream.create!(
    name: "Cours de cuisine",
    description: "Tu es fatigué de toujours manger la même chose ? Participe à un cours de cuisine avec un grand Chef",
    price: 35,
    duration: 3,
    category: Category.find_by(name: "eating"),
    user: User.find_by(email: "concorde@gmail.com")
  ),

  Dream.create!(
    name: "Match de tennis",
    description: "Tu remportes la Coupe Davis face aà Rafael Nadal, facile !",
    price: 250,
    duration: 3,
    category: Category.find_by(name: "sport"),
    user: User.find_by(email: "yuhecny@gmail.com")
  ),


  Dream.create!(
    name: "Coupe du monde soccer",
    description: "Tu pars au Qatar pour participer à la coupe du monde de soccer avec l'équipe du Luxembourg et remporte la coupe",
    price: 120,
    duration: 2,
    category: Category.find_by(name: "sport"),
    user: User.find_by(email: "yuhecny@gmail.com")
  ),
#////////////////
  Dream.create!(
    name: "Noël avec Mariah Carey",
    description: "Décore ton sapin de noël en compagnie de Mariah Carey, tout en écoutant le titre All I want for christmas is you",
    price: 80,
    duration: 2,
    category: Category.find_by(name: "concerts"),
    user: User.find_by(email: "edgar@gmail.com")
  ),

  Dream.create!(
    name: "Une année avec Tom Cruis",
    description: "Des vacances aux côtés de Tom, manger dans de bons restaurants et visiter le monde",
    price: 350,
    duration: 2,
    category: Category.find_by(name: "retirement"),
    user: User.find_by(email: "concorde@gmail.com")
  ),

  Dream.create!(
    name: "Retourner dans le passé",
    description: "Tu peux revivre les meilleurs moments de ton enfance",
    price: 80,
    duration: 3,
    category: Category.find_by(name: "time"),
    user: User.find_by(email: "edgar@gmail.com")
  ),

  Dream.create!(
    name: "Combat de Gladiateurs ",
    description: "Lutte sans merci entre gladiateurs et tu remportes le combat avec honneur",
    price: 30,
    duration: 1,
    category: Category.find_by(name: "gladiator"),
    user: User.find_by(email: "edgar@gmail.com")
  ),

  Dream.create!(
    name: "Je suis une légende",
    description: "Tu es l'acteur principal dans ton film préféré",
    price: 50,
    duration: 1,
    category: Category.find_by(name: "movie"),
    user: User.find_by(email: "yuhecny@gmail.com")
  ),


  Dream.create!(
    name: "Comme un oiseau",
    description: "Tu as un super pouvoir qui te permet de voler comme un oiseau",
    price: 90,
    duration: 2,
    category: Category.find_by(name: "travel"),
    user: User.find_by(email: "yuhecny@gmail.com")
  )
]
puts "done!"

# Location.create(
#   dream: Dream.find(1),
#   user: User.find_by(email: "concorde@gmail.com"),
#   comment: "test",
#   status: 0
# )

dream_image_0 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669911925/perdu_dans_les_bois_riq86s.jpg")
all_dreams[0].photo.attach(io: dream_image_0, filename: "", content_type: "image/png")

dream_image_1 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669911925/perdre-ses-dents_f50gmg.jpg")
all_dreams[1].photo.attach(io: dream_image_1, filename: "", content_type: "image/png")

dream_image_2 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669912619/web_dev_gewzss.jpg")
all_dreams[2].photo.attach(io: dream_image_2, filename: "", content_type: "image/png")

dream_image_3 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669912655/iStock-1017296544_igqz1c.jpg")
all_dreams[3].photo.attach(io: dream_image_3, filename: "", content_type: "image/png")

dream_image_4 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669912619/5_dates_rourdm.jpg")
all_dreams[4].photo.attach(io: dream_image_4, filename: "", content_type: "image/png")

dream_image_5 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669911925/marier_avec_un_chat_piozqd.jpg")
all_dreams[5].photo.attach(io: dream_image_5, filename: "", content_type: "image/png")

dream_image_6 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669912940/thailande_kyffys.jpg")
all_dreams[6].photo.attach(io: dream_image_6, filename: "", content_type: "image/png")

dream_image_7 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669912941/europe_cp1lj9.jpg")
all_dreams[7].photo.attach(io: dream_image_7, filename: "", content_type: "image/png")


dream_image_8 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669913734/tout_manger_yyyrkv.webp")
all_dreams[8].photo.attach(io: dream_image_8, filename: "", content_type: "image/png")

dream_image_9 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669913734/cours_cuisine_s2ukqi.jpg")
all_dreams[9].photo.attach(io: dream_image_9, filename: "", content_type: "image/png")

dream_image_10 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669913734/trnnis_oserp2.jpg")
all_dreams[10].photo.attach(io: dream_image_10, filename: "", content_type: "image/png")


dream_image_11 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669913734/soccer_ot7rm9.jpg")
all_dreams[11].photo.attach(io: dream_image_11, filename: "", content_type: "image/png")


dream_image_12 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669911925/Mariah_carey_rzmizv.jpg")
all_dreams[12].photo.attach(io: dream_image_12, filename: "", content_type: "image/png")

dream_image_13 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669913767/tom_cruise_zqzwn6.jpg")
all_dreams[13].photo.attach(io: dream_image_13, filename: "", content_type: "image/png")

dream_image_14 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669914185/passe_rpppac.jpg")
all_dreams[14].photo.attach(io: dream_image_14, filename: "", content_type: "image/png")

dream_image_15 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669914186/gladiateur_nzhcqs.jpg")
all_dreams[15].photo.attach(io: dream_image_15, filename: "", content_type: "image/png")

dream_image_16 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669914185/acteur_legende_zjazlv.webp")
all_dreams[16].photo.attach(io: dream_image_16, filename: "", content_type: "image/png")

dream_image_17 = URI.open("https://res.cloudinary.com/dvw6upciw/image/upload/v1669913734/voler_ovqote.jpg")
all_dreams[17].photo.attach(io: dream_image_17, filename: "", content_type: "image/png")


puts "All done!"
