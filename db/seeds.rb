# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Influencer.create!(
  firstName: "Selena",
  lastName: "Gomez",
  igUsername: "selenagomez",
  gender: 2,
  email: "selena@influence.com",
  password: "123456",
  password_confirmation: "123456"
)

Marketer.create!(
  name: "Moovby Sdn Bhd",
  companyName: "Moovby Sdn Bhd",
  budget: 20000.00,
  message: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
  country: "Malaysia",
  email: "moovby@influence.com",
  password: "123456",
  password_confirmation: "123456"
)

# Load jobs
json_data = File.read("db/jobs.json")
json_jobs = JSON.parse(json_data)
json_jobs["jobs"].each do |attr_hash|
  Job.create!(attr_hash)
end
