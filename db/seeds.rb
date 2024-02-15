require "open-uri"
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

marco = User.new(email: "marco@jail.com", password: 654321, nickname: "MarcoTu", first_name: "Marco", last_name: "T", language: "italian, english", contributor: false)
file_marco = URI.open("https://ca.slack-edge.com/T02NE0241-U068PD3FSQY-6c0a11d58d37-512")
marco.photo.attach(io: file_marco, filename: "nes.png", content_type: "image/png")
marco.save

yolanda = User.new(email: "yolanda@jail.com", password: 654321, nickname: "Yoyolandada", first_name: "Yolanda", last_name: "M", language: "spanish, english", contributor: false)
file_yolanda = URI.open("https://ca.slack-edge.com/T02NE0241-U067SHG69UK-77aa066498fa-512")
yolanda.photo.attach(io: file_yolanda, filename: "nes.png", content_type: "image/png")
yolanda.save

luisa = User.new(email: "luisa@jail.com", password: 654321, nickname: "luimss", first_name: "Luisa", last_name: "S", language: "portuguese, english", contributor: false)
file_luisa = URI.open("https://ca.slack-edge.com/T02NE0241-U06947DAH08-371b15d9fa95-512")
luisa.photo.attach(io: file_luisa, filename: "nes.png", content_type: "image/png")
luisa.save

stamatis = User.new(email: "stamatis@jail.com", password: 654321, nickname: "Stam", first_name: "Stamatis", last_name: "V", language: "", contributor: false)
file_stamatis = URI.open("https://ca.slack-edge.com/T02NE0241-U068ERW0M6D-af31026e9d6d-512")
stamatis.photo.attach(io: file_stamatis, filename: "nes.png", content_type: "image/png")
stamatis.save
puts "Migrant Users seeds created"

pedro = User.new(email: "pedro@jail.com", password: 654321, nickname: "pedro_bm", first_name: "Pedro", last_name: "BM", language: "portuguese, english", contributor: true)
file_pedro = URI.open("https://ca.slack-edge.com/T02NE0241-US7288YNP-adabe5cee822-512")
pedro.photo.attach(io: file_pedro, filename: "nes.png", content_type: "image/png")
pedro.save

grazia = User.new(email: "grazia@jail.com", password: 654321, nickname: "grazia_c", first_name: "Grazia", last_name: "C", language: "italian, english", contributor: true)
file_grazia = URI.open("https://ca.slack-edge.com/T02NE0241-U03BK5AMA86-ac39ec609d82-512")
grazia.photo.attach(io: file_grazia, filename: "nes.png", content_type: "image/png")
grazia.save

lucia = User.new(email: "lucia@jail.com", password: 654321, nickname: "lucia_h", first_name: "Lucia", last_name: "H", language: "spanish, english",  contributor: true)
file_lucia = URI.open("https://ca.slack-edge.com/T02NE0241-U02GF9LEYFL-b383a4af4854-512")
lucia.photo.attach(io: file_lucia, filename: "nes.png", content_type: "image/png")
lucia.save

dareos = User.new(email: "dareos@jail.com", password: 654321, nickname: "dareos_h", first_name: "Dareos", last_name: "H", language: "greek, english", contributor: true)
file_dareos = URI.open("https://ca.slack-edge.com/T02NE0241-U0113CLED54-91628ee16c30-512")
dareos.photo.attach(io: file_dareos, filename: "nes.png", content_type: "image/png")
dareos.save

jess = User.new(email: "jess@jail.com", password: 654321, nickname: "jess_sc", first_name: "Jess", last_name: "SC", language: "portuguese, english", contributor: true)
file_jess = URI.open("https://ca.slack-edge.com/T02NE0241-U01C4FMDDC4-ae3730d008f4-512")
jess.photo.attach(io: file_jess, filename: "nes.png", content_type: "image/png")
jess.save

dari = User.new(email: "dari@jail.com", password: 654321, nickname: "dari_g", first_name: "Dari", last_name: "G", language: "english", contributor: true)
file_dari = URI.open("https://ca.slack-edge.com/T02NE0241-U03PH9SN7TQ-6a1eb994dc73-512")
dari.photo.attach(io: file_dari, filename: "nes.png", content_type: "image/png")
dari.save

arbi = User.new(email: "arbi@jail.com", password: 654321, nickname: "arbi_v", first_name: "Arbi", last_name: "V", language: "italian, english", contributor: true)
file_arbi = URI.open("https://ca.slack-edge.com/T02NE0241-U56PHGY1Z-14661014b251-512")
arbi.photo.attach(io: file_arbi, filename: "nes.png", content_type: "image/png")
arbi.save

alex = User.new(email: "alex@jail.com", password: 654321, nickname: "alex_d", first_name: "Alex", last_name: "D", language: "english", contributor: true)
file_alex = URI.open("https://ca.slack-edge.com/T02NE0241-UBGQCG2JD-222a98c74f2b-512")
alex.photo.attach(io: file_alex, filename: "nes.png", content_type: "image/png")
alex.save

andre = User.new(email: "andre@jail.com", password: 654321, nickname: "andre_m", first_name: "Andre", last_name: "M", language: "portuguese, english", contributor: true)
file_andre = URI.open("https://ca.slack-edge.com/T02NE0241-U01U4S92NJ1-346b46af5faf-512")
andre.photo.attach(io: file_andre, filename: "nes.png", content_type: "image/png")
andre.save

will = User.new(email: "will@jail.com", password: 654321, nickname: "will_d", first_name: "Will", last_name: "D", language: "italian, english", contributor: true)
file_will = URI.open("https://ca.slack-edge.com/T02NE0241-U03PK6BT5BP-50d644f31b6d-512")
will.photo.attach(io: file_will, filename: "nes.png", content_type: "image/png")
will.save

david = User.new(email: "david@jail.com", password: 654321, nickname: "david_C", first_name: "David", last_name: "C", language: "italian, english", contributor: true)
file_david = URI.open("https://ca.slack-edge.com/T02NE0241-U01439WBLBA-03c468fd4087-512")
david.photo.attach(io: file_david, filename: "nes.png", content_type: "image/png")
david.save

luca = User.new(email: "luca@jail.com", password: 654321, nickname: "luca_s", first_name: "Luca", last_name: "S", language: "portuguese, english", contributor: true)
file_luca = URI.open("https://ca.slack-edge.com/T02NE0241-U01U249Q3DH-fb1d15ae116b-512")
luca.photo.attach(io: file_luca, filename: "nes.png", content_type: "image/png")
luca.save

anja = User.new(email: "anja@jail.com", password: 654321, nickname: "anja_s", first_name: "Anja", last_name: "S", language: "english", contributor: true)
file_anja = URI.open("https://ca.slack-edge.com/T02NE0241-U02T9MAGQUC-e31450bc5c4b-512")
anja.photo.attach(io: file_anja, filename: "nes.png", content_type: "image/png")
anja.save

paulyn = User.new(email: "paulyn@jail.com", password: 654321, nickname: "paulyn_o", first_name: "Paulyn", last_name: "O", language: "english", contributor: true)
file_paulyn = URI.open("https://ca.slack-edge.com/T02NE0241-U04LHR36XM1-0c4ad4ef9aa3-512")
paulyn.photo.attach(io: file_paulyn, filename: "nes.png", content_type: "image/png")
paulyn.save

christian = User.new(email: "cristian@jail.com", password: 654321, nickname: "christian_b_y", first_name: "Christian", last_name: "BY", language: "french, english", contributor: true)
file_christian = URI.open("https://ca.slack-edge.com/T02NE0241-U02E7GDQ3A8-7216f1981495-512")
christian.photo.attach(io: file_christian, filename: "nes.png", content_type: "image/png")
christian.save
puts "Contributor Users seeds created"

legal_counsel = Category.create!(name: "Legal Counsel")
housing = Category.create!(name: "Housing")
health_care = Category.create!(name: "Healthcare")
education = Category.create!(name: "Education")
employment = Category.create!(name: "Employment")
puts "Category seeds created"


pedro_law_healthcare = Offer.create!(user: pedro, category: health_care, name: "Health for Newcomers", phone: "999-999-9999", website: "hfn.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We are an office dedicated to addressing the unique healthcare needs of immigrants by providing culturally sensitive support and guidance. Through language interpretation services and assistance with navigating the healthcare system, we ensure that immigrant communities receive equitable and accessible healthcare.")
grazia_healthcare = Offer.create!(user: grazia, category: health_care, name: "Lidwina Health Clinic", phone: "888-888-8888", website: "lhc.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We focus on delivering comprehensive healthcare services to migrant populations, recognizing and addressing the specific health challenges faced by individuals on the move.")
dareos_healthcare = Offer.create!(user: dareos, category: health_care, name: "St. Frances X. Cabrini Center", phone: "777-777-7777", website: "sfxcc.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We are an office dedicated to addressing the unique healthcare needs of immigrants by providing culturally sensitive support and guidance. Through language interpretation services and assistance with navigating the healthcare system, we ensure that immigrant communities receive equitable and accessible healthcare.")
jess_healthcare = Offer.create!(user: jess, category: health_care, name: "No Borders Clinic", phone: "555-555-5555", website: "nbc.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We are an office dedicated to addressing the unique healthcare needs of immigrants by providing culturally sensitive support and guidance. Through language interpretation services and assistance with navigating the healthcare system, we ensure that immigrant communities receive equitable and accessible healthcare.")
dari_healthcare = Offer.create!(user: dari, category: health_care, name: "Solidarity Health Center", phone: "444-444-4444", website: "shc.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We focus on delivering comprehensive healthcare services to migrant populations, recognizing and addressing the specific health challenges faced by individuals on the move. By offering mobile clinics and culturally competent healthcare professionals, we aim to overcome barriers to healthcare access, promoting the well-being of migrant communities and contributing to their successful integration into the local health system.")
arbi_healthcare = Offer.create!(user: arbi, category: health_care, name: "Central Health Service", phone: "333-333-3333", website: "chs.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We are an office dedicated to addressing the unique healthcare needs of immigrants by providing culturally sensitive support and guidance. Through language interpretation services and assistance with navigating the healthcare system, we ensure that immigrant communities receive equitable and accessible healthcare.")
alex_healthcare = Offer.create!(user: alex, category: health_care, name: "Newcomer Health Centrum ", phone: "222-222-2222", website: "nhc.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We focus on delivering comprehensive healthcare services to migrant populations, recognizing and addressing the specific health challenges faced by individuals on the move. By offering mobile clinics and culturally competent healthcare professionals, we aim to overcome barriers to healthcare access, promoting the well-being of migrant communities and contributing to their successful integration into the local health system.")
andre_healthcare = Offer.create!(user: andre, category: health_care, name: "Mental Health Services", phone: "111-111-1111", website: "mmhs.health.care", upvotes: (60..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "We prioritize the mental well-being of immigrant populations, acknowledging the unique stressors and challenges they may encounter. Through culturally informed therapy, support groups, and outreach initiatives, this office strives to provide a safe space for immigrants to address mental health concerns, fostering resilience and promoting a holistic approach to healthcare within diverse immigrant communities.")
puts "Health Care offers seeds created"

pedro_law = Offer.create!(user: pedro, category: legal_counsel, name: "Global Gateway Legal Group", phone: "999-999-9999", website: "gglg.legal", upvotes: (10..100).to_a.sample, country: "Netherlands", city: "Amsterdam", description: "As leaders in immigration law, we assist individuals and businesses in navigating the complexities of global mobility. A team of immigration experts specializes in securing visas, work permits, and residency for clients across borders.")
grazia_law = Offer.create!(user: grazia, category: legal_counsel, name: "Pathfinder Immigration Law", phone: "888-888-8888", website: "pil.legal", upvotes: (10..100).to_a.sample, country: "Italy", city: "Milan", description: "With a focus on cross-border mobility, we excel in providing tailored immigration solutions. Our attorneys leverage extensive knowledge of international law to facilitate smooth transitions for individuals seeking to relocate for work or personal reasons.")
lucia_law = Offer.create!(user: lucia, category: legal_counsel, name: "CrossBorders Law Associates", phone: "777-777-7777", website: "cla.legal", upvotes: (10..100).to_a.sample, country: "Spain", city: "Barcelona", description: "We stand out for our expertise in asylum and refugee law. Committed to protecting the rights of those seeking refuge, our dedicated team guides clients through the intricate processes of asylum applications and humanitarian visas.")
puts "Legal Counsel offers seeds created"

dareos_housing = Offer.create!(user: dareos, category: housing, name: "Frontier Homes for Newcomers", phone: "999-999-9999", website: "fhfn.house", upvotes: (10..100).to_a.sample, country: "France", city: "Paris", description: "We are dedicated to providing housing solutions in regions with growing immigrant populations. Our team understands the unique challenges faced by newcomers and works tirelessly to offer affordable and welcoming homes, ensuring a smooth start to their new life.")
jess_housing = Offer.create!(user: jess, category: housing, name: "Cultural Quarters Realty", phone: "888-888-8888", website: "cqr.house", upvotes: (10..100).to_a.sample, country: "England", city: "Birmingham", description: "We specialize in housing that celebrates diversity and cultural exchange. With a portfolio of properties located in culturally vibrant neighborhoods, we aim to create spaces where immigrants feel a sense of community and connection to their heritage.")
dari_housing = Offer.create!(user: dari, category: housing, name: "GlobalNest Real Estate Solutions", phone: "777-777-7777", website: "gres.house", upvotes: (10..100).to_a.sample, country: "France", city: "Calais", description: "We combine real estate expertise with immigration support services. Our comprehensive approach includes not only helping clients secure suitable housing but also guiding them through the legal and logistical aspects of settling in a new country.")
puts "Housing offers seeds created"

will_edu = Offer.create!(user: will, category: education, name: "Newcomer Education Resource Center", phone: "999-999-9999", website: "nerc.educ", upvotes: (10..100).to_a.sample, country: "Albania", city: "Tirana", description: "We are dedicated to easing the transition of immigrant students into the educational system. By offering language acquisition programs, academic counseling, and cultural integration initiatives, this office ensures that newcomer students receive the necessary support to excel academically and socially in their new learning environment.")
david_edu = Offer.create!(user: david, category: education, name: "Multilingual Education Services", phone: "888-888-8888", website: "mes.educ", upvotes: (10..100).to_a.sample, country: "Albania", city: "Tepelena", description: "We focus on breaking language barriers in education by providing specialized language support for immigrant students. Through bilingual instruction, language immersion programs, and language assessments, this office aims to create an inclusive learning environment that recognizes and celebrates linguistic diversity, fostering academic success for students from diverse cultural backgrounds.")
luca_edu = Offer.create!(user: luca, category: education, name: "Family Engagement and Support Office", phone: "777-777-7777", website: "feso.educ", upvotes: (10..100).to_a.sample, country: "Netherlands", city: "Utrecht", description: "We recognize the crucial role of families in the educational journey of immigrant students. By providing resources, workshops, and community outreach programs, this office empowers immigrant families to actively participate in their children's education, creating a collaborative partnership between schools and families to enhance the overall educational experience for immigrant students.")
puts "Education offers seeds created"

anja_employment = Offer.create!(user: anja, category: employment, name: "Immigrant Workforce Development Center", phone: "999-999-9999", website: "iwdc.employ", upvotes: (10..100).to_a.sample, country: "Spain", city: "Madrid", description: "We are committed to empowering newcomers by providing tailored employment support and skill development programs. Through resume workshops, job placement assistance, and vocational training, this office ensures that immigrants gain the necessary skills and resources to integrate successfully into the workforce, fostering economic self-sufficiency and career advancement.")
paulyn_employment = Offer.create!(user: paulyn, category: employment, name: "Diversity Employment Initiatives Office", phone: "888-888-8888", website: "deio.employ", upvotes: (10..100).to_a.sample, country: "Greece", city: "Athens", description: "We focus on promoting inclusive hiring practices and diversity in the workplace, recognizing the valuable contributions of immigrant talent. Through partnerships with employers, job fairs, and diversity training programs, this office aims to create equal opportunities for immigrants, fostering a workplace environment that values and celebrates diverse backgrounds and experiences.")
christian_employment = Offer.create!(user: christian, category: employment, name: "Migrant Entrepreneurship Support Center", phone: "777-777-7777", website: "mesc.employ", upvotes: (10..100).to_a.sample, country: "Greece", city: "Patra", description: "We are dedicated to nurturing the entrepreneurial spirit within immigrant communities. By offering business development resources, mentorship programs, and access to funding opportunities, this office empowers immigrants to establish and grow their businesses, contributing not only to their economic success but also to the overall vitality and diversity of the local business landscape.")
puts "Employment offers seeds created"
