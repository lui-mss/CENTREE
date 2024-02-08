# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Message.destroy_all
Chatroom.destroy_all
Offer.destroy_all
Category.destroy_all
User.destroy_all


marco = User.create!(email: "marco@jail.com", password: 654321, nickname: "MarcoTu", first_name: "Marco", last_name: "T", language: "italian, english", contributor: false)
yolanda = User.create!(email: "yolanda@jail.com", password: 654321, nickname: "Yoyolandada", first_name: "Yolanda", last_name: "M", language: "spanish, english", contributor: false)
luisa = User.create!(email: "luisa@jail.com", password: 654321, nickname: "luimss", first_name: "Luisa", last_name: "S", language: "portuguese, english", contributor: false)
stamatis = User.create!(email: "stamatis@jail.com", password: 654321, nickname: "Stam", first_name: "Stamatis", last_name: "V", language: "greek, english", contributor: false)

puts "Migrant Users seeds created"

pedro = User.create!(email: "pedro@jail.com", password: 654321, nickname: "PedroBM", first_name: "Pedro", last_name: "BM", language: "portuguese, english", contributor: true)
grazia = User.create!(email: "grazia@jail.com", password: 654321, nickname: "Grazia_C", first_name: "Grazia", last_name: "C", language: "italian, english", contributor: true)
lucia = User.create!(email: "lucia@jail.com", password: 654321, nickname: "Lucia_H", first_name: "Lucia", last_name: "H", language: "spanish, english",  contributor: true)
dareos = User.create!(email: "dareos@jail.com", password: 654321, nickname: "Dareos_H", first_name: "Dareos", last_name: "H", language: "greek, english", contributor: true)
jess = User.create!(email: "jess@jail.com", password: 654321, nickname: "Jess_SC", first_name: "Jess", last_name: "SC", language: "portuguese, english", contributor: true)
dari = User.create!(email: "dari@jail.com", password: 654321, nickname: "Dari_G", first_name: "Dari", last_name: "G", language: "english", contributor: true)
arbi = User.create!(email: "arbi@jail.com", password: 654321, nickname: "Arbi_V", first_name: "Arbi", last_name: "V", language: "italian, english", contributor: true)
alex = User.create!(email: "alex@jail.com", password: 654321, nickname: "Alex_D", first_name: "Alex", last_name: "D", language: "english", contributor: true)
andre = User.create!(email: "andre@jail.com", password: 654321, nickname: "Andre_M", first_name: "Andre", last_name: "M", language: "portuguese, english", contributor: true)

puts "Lawyer Users seeds created"

housing = Category.create!(name: "Housing")
health_care = Category.create!(name: "Healthcare")
legal_counsel = Category.create!(name: "Legal Counsel")
education = Category.create!(name: "Education")
employment = Category.create!(name: "Employment")

puts "Category seeds created"

pedro_offer = Offer.create!(user: pedro, category: legal_counsel, name: "Pedro's Law Firm", phone: "999-999-9999", website: "pedro.legal", upvotes: (10..100).to_a.sample, country: "Germany", city: "Berlin", description: "As leaders in immigration law, we assist individuals and businesses in navigating the complexities of global mobility. A team of immigration experts specializes in securing visas, work permits, and residency for clients across borders.")
grazia_offer = Offer.create!(user: grazia, category: legal_counsel, name: "Grazia's Law Firm", phone: "888-888-8888", website: "grazia.legal", upvotes: (10..100).to_a.sample, country: "Italy", city: "Rome", description: "With a focus on cross-border mobility, we excel in providing tailored immigration solutions. Our attorneys leverage extensive knowledge of international law to facilitate smooth transitions for individuals seeking to relocate for work or personal reasons.")
lucia_offer = Offer.create!(user: lucia, category: legal_counsel, name: "Pedro's Law Firm", phone: "777-777-7777", website: "lucia.legal", upvotes: (10..100).to_a.sample, country: "Spain", city: "Barcelona", description: "We stand out for our expertise in asylum and refugee law. Committed to protecting the rights of those seeking refuge, our dedicated team guides clients through the intricate processes of asylum applications and humanitarian visas.")
dareos_offer = Offer.create!(user: dareos, category: legal_counsel, name: "Dareo's Law Firm", phone: "666-666-6666", website: "dareos.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Athens", description: "We are dedicated to LGBTQ+ immigration rights, championing inclusivity in the immigration process. Our knowledgeable attorneys navigate the unique challenges faced by LGBTQ+ individuals, providing support for asylum claims and family-sponsored immigration.")
dari_offer = Offer.create!(user: dari, category: legal_counsel, name: "Dari's Law Firm", phone: "444-444-4444", website: "dari.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Athens", description: "We specialize in guiding clients through the intricacies of naturalization and citizenship applications. Our committed approach ensures that individuals seeking to become EU citizens receive comprehensive legal support throughout the process.")
arbi_offer = Offer.create!(user: arbi, category: legal_counsel, name: "Arbi's Law Firm", phone: "333-333-3333", website: "arbi.legal", upvotes: (10..100).to_a.sample, country: "Albania", city: "Tirana", description: "We are a boutique firm known for its proficiency in investor immigration programs. We facilitate opportunities for foreign investors to contribute to the growth of the EU economy.")
alex_offer = Offer.create!(user: alex, category: legal_counsel, name: "Alex's Law Firm", phone: "222-222-2222", website: "alex.legal", upvotes: (10..100).to_a.sample, country: "France", city: "Marseille", description: "Recognizing the importance of cultural diversity, we specialize in cultural exchange and specialty visas. Our experienced team facilitates programs that promote international collaboration, supporting clients in achieving their goals through legal immigration channels.")
andre_offer = Offer.create!(user: andre, category: legal_counsel, name: "Andre's Law Firm", phone: "111-111-1111", website: "andre.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Patra", description: "We are a client-centric firm dedicated to simplifying the immigration process. Specializing in family-sponsored immigration, our attorneys work diligently to unite families and help individuals navigate the path to permanent residency and citizenship.")

puts "Lawyer offers seeds created"

# chatrooms are to be created by person who codes the chatroom stuff
# in order to retrieve the contributor_id value, you must type Chatroom.contributor.id and the same goes for the migrant.
# same goes for the messages
