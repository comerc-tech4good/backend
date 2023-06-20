# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Activity.destroy_all

column_names = File.readlines('db/data/message.txt').map(&:strip)

p column_names

column_names[7..column_names.size - 1].each do |column_name|
  Activity.create!(
    name: column_name.capitalize.gsub('_', ' ')
  )
end
