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

pedro = User.create!(email: "pedro@jail.com", password: 654321, nickname: "pedro_bm", first_name: "Pedro", last_name: "BM", language: "portuguese, english", contributor: true)
grazia = User.create!(email: "grazia@jail.com", password: 654321, nickname: "grazia_c", first_name: "Grazia", last_name: "C", language: "italian, english", contributor: true)
lucia = User.create!(email: "lucia@jail.com", password: 654321, nickname: "lucia_h", first_name: "Lucia", last_name: "H", language: "spanish, english",  contributor: true)
dareos = User.create!(email: "dareos@jail.com", password: 654321, nickname: "dareos_h", first_name: "Dareos", last_name: "H", language: "greek, english", contributor: true)
jess = User.create!(email: "jess@jail.com", password: 654321, nickname: "jess_sc", first_name: "Jess", last_name: "SC", language: "portuguese, english", contributor: true)
dari = User.create!(email: "dari@jail.com", password: 654321, nickname: "dari_g", first_name: "Dari", last_name: "G", language: "english", contributor: true)
arbi = User.create!(email: "arbi@jail.com", password: 654321, nickname: "arbi_v", first_name: "Arbi", last_name: "V", language: "italian, english", contributor: true)
alex = User.create!(email: "alex@jail.com", password: 654321, nickname: "alex_d", first_name: "Alex", last_name: "D", language: "english", contributor: true)
andre = User.create!(email: "andre@jail.com", password: 654321, nickname: "andre_m", first_name: "Andre", last_name: "M", language: "portuguese, english", contributor: true)

puts "Lawyer Users seeds created"

housing = Category.create!(name: "Housing")
health_care = Category.create!(name: "Healthcare")
legal_counsel = Category.create!(name: "Legal Counsel")
education = Category.create!(name: "Education")
employment = Category.create!(name: "Employment")
all_categories = Category.all

puts "Category seeds created"

pedro_offer = Offer.create!(user: pedro, category: legal_counsel, name: "Global Gateway Legal Group", phone: "999-999-9999", website: "gglg.legal", upvotes: (10..100).to_a.sample, country: "Germany", city: "Berlin", description: "As leaders in immigration law, we assist individuals and businesses in navigating the complexities of global mobility. A team of immigration experts specializes in securing visas, work permits, and residency for clients across borders.")
grazia_offer = Offer.create!(user: grazia, category: legal_counsel, name: "Pathfinder Immigration Law", phone: "888-888-8888", website: "pil.legal", upvotes: (10..100).to_a.sample, country: "Italy", city: "Rome", description: "With a focus on cross-border mobility, we excel in providing tailored immigration solutions. Our attorneys leverage extensive knowledge of international law to facilitate smooth transitions for individuals seeking to relocate for work or personal reasons.")
lucia_offer = Offer.create!(user: lucia, category: legal_counsel, name: "CrossBorders Law Associates", phone: "777-777-7777", website: "cla.legal", upvotes: (10..100).to_a.sample, country: "Spain", city: "Barcelona", description: "We stand out for our expertise in asylum and refugee law. Committed to protecting the rights of those seeking refuge, our dedicated team guides clients through the intricate processes of asylum applications and humanitarian visas.")
dareos_offer = Offer.create!(user: dareos, category: legal_counsel, name: "Horizon Immigration Partners", phone: "666-666-6666", website: "hip.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Athens", description: "We are dedicated to LGBTQ+ immigration rights, championing inclusivity in the immigration process. Our knowledgeable attorneys navigate the unique challenges faced by LGBTQ+ individuals, providing support for asylum claims and family-sponsored immigration.")
jess_offer = Offer.create!(user: jess, category: legal_counsel, name: "Passport Partners Immigration", phone: "555-555-5555", website: "ppi.legal", upvotes: (10..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "With a team of seasoned attorneys, we bring extensive expertise in securing visas, residency, and citizenship. Known for our commitment to personalized service, we ensure a smooth and successful immigration journey for individuals and businesses alike.")
dari_offer = Offer.create!(user: dari, category: legal_counsel, name: "Unity Immigration Law Advisors", phone: "444-444-4444", website: "uila.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Athens", description: "We specialize in guiding clients through the intricacies of naturalization and citizenship applications. Our committed approach ensures that individuals seeking to become EU citizens receive comprehensive legal support throughout the process.")
arbi_offer = Offer.create!(user: arbi, category: legal_counsel, name: "BridgeView Immigration Law Firm", phone: "333-333-3333", website: "bilf.legal", upvotes: (10..100).to_a.sample, country: "Albania", city: "Tirana", description: "We are a boutique firm known for its proficiency in investor immigration programs. We facilitate opportunities for foreign investors to contribute to the growth of the EU economy.")
alex_offer = Offer.create!(user: alex, category: legal_counsel, name: "Pinnacle Immigration Legal Services", phone: "222-222-2222", website: "pils.legal", upvotes: (10..100).to_a.sample, country: "France", city: "Marseille", description: "Recognizing the importance of cultural diversity, we specialize in cultural exchange and specialty visas. Our experienced team facilitates programs that promote international collaboration, supporting clients in achieving their goals through legal immigration channels.")
andre_offer = Offer.create!(user: andre, category: legal_counsel, name: "NewLeaf Immigration Law Offices", phone: "111-111-1111", website: "nilo.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Patra", description: "We are a client-centric firm dedicated to simplifying the immigration process. Specializing in family-sponsored immigration, our attorneys work diligently to unite families and help individuals navigate the path to permanent residency and citizenship.")

puts "Lawyer offers seeds created"

# pedro_housing = Offer.create!(user: pedro, category: housing, name: "Frontier Homes for Newcomers", phone: "999-999-9999", website: "fhfn.house", upvotes: (10..100).to_a.sample, country: "Germany", city: "Berlin", description: "Frontier Homes for Newcomers is dedicated to providing housing solutions in regions with growing immigrant populations. Their team understands the unique challenges faced by newcomers and works tirelessly to offer affordable and welcoming homes, ensuring a smooth start to their new life.")
# grazia_housing = Offer.create!(user: grazia, category: housing, name: "Cultural Quarters Realty", phone: "888-888-8888", website: "cqr.house", upvotes: (10..100).to_a.sample, country: "Italy", city: "Rome", description: "Cultural Quarters Realty specializes in housing that celebrates diversity and cultural exchange. With a portfolio of properties located in culturally vibrant neighborhoods, they aim to create spaces where immigrants feel a sense of community and connection to their heritage.")
# lucia_housing = Offer.create!(user: lucia, category: housing, name: "GlobalNest Real Estate Solutions", phone: "777-777-7777", website: "gres.house", upvotes: (10..100).to_a.sample, country: "Spain", city: "Barcelona", description: "GlobalNest Real Estate Solutions combines real estate expertise with immigration support services. Their comprehensive approach includes not only helping clients secure suitable housing but also guiding them through the legal and logistical aspects of settling in a new country.")
# dareos_housing = Offer.create!(user: dareos, category: housing, name: "New Horizons Housing Co.", phone: "666-666-6666", website: "nhhco.house", upvotes: (10..100).to_a.sample, country: "Greece", city: "Athens", description: "New Horizons Housing Co. focuses on providing affordable housing options tailored to the needs of immigrants starting anew. Committed to easing the transition, they offer a range of budget-friendly residences and support services to facilitate a smooth integration into the local community.")
# jess_housing = Offer.create!(user: jess, category: housing, name: "Epic Homes International", phone: "555-555-5555", website: "ehi.house", upvotes: (10..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "With a team of seasoned attorneys, we bring extensive expertise in securing visas, residency, and citizenship. Known for our commitment to personalized service, we ensure a smooth and successful immigration journey for individuals and businesses alike.")
# dari_housing = Offer.create!(user: dari, category: housing, name: "Unity Immigration Law Advisors", phone: "444-444-4444", website: "uila.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Athens", description: "We specialize in guiding clients through the intricacies of naturalization and citizenship applications. Our committed approach ensures that individuals seeking to become EU citizens receive comprehensive legal support throughout the process.")
# arbi_housing = Offer.create!(user: arbi, category: housing, name: "BridgeView Immigration Law Firm", phone: "333-333-3333", website: "bilf.legal", upvotes: (10..100).to_a.sample, country: "Albania", city: "Tirana", description: "We are a boutique firm known for its proficiency in investor immigration programs. We facilitate opportunities for foreign investors to contribute to the growth of the EU economy.")
# alex_housing = Offer.create!(user: alex, category: housing, name: "Pinnacle Immigration Legal Services", phone: "222-222-2222", website: "pils.legal", upvotes: (10..100).to_a.sample, country: "France", city: "Marseille", description: "Recognizing the importance of cultural diversity, we specialize in cultural exchange and specialty visas. Our experienced team facilitates programs that promote international collaboration, supporting clients in achieving their goals through legal immigration channels.")
# andre_housing = Offer.create!(user: andre, category: housing, name: "NewLeaf Immigration Law Offices", phone: "111-111-1111", website: "nilo.legal", upvotes: (10..100).to_a.sample, country: "Greece", city: "Patra", description: "We are a client-centric firm dedicated to simplifying the immigration process. Specializing in family-sponsored immigration, our attorneys work diligently to unite families and help individuals navigate the path to permanent residency and citizenship.")

# puts "Housing offers seeds created"
