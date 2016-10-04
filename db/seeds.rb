# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Load jobs
json_data = File.read("db/jobs.json")
json_jobs = JSON.parse(json_data)
json_jobs["jobs"].each do |attr_hash|
  Job.create!(attr_hash)
end
