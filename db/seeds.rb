# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Task.destroy_all
now = Time.current
Task.create!([
   { title: "Learn Ruby on Rails", completed: true, created_at: now - 4.days },
  { title: "Build a To-Do App", completed: false, created_at: now - 3.days },
  { title: "Write RSpec tests", completed: false, created_at: now - 2.days },
  { title: "Deploy to production", completed: false, created_at: now - 1.day }
])

puts "Seeded #{Task.count} tasks."
