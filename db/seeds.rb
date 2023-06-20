require 'smarter_csv'


puts "Emptying DB"
Activity.destroy_all
District.destroy_all
Criterium.destroy_all
puts "Emptied DB"

#####################################
#                                   #
#                                   #
#             Activites             #
#                                   #
#                                   #
#####################################

puts "Creating Activities"

column_names = File.readlines('db/data/message.txt').map(&:strip)

column_names[7..column_names.size - 1].each do |column_name|
  Activity.create!(
    name: column_name.capitalize.gsub('_', ' ')
  )
end

puts "Created #{Activity.all.count} activities"

#####################################
#                                   #
#                                   #
#             DATABASE              #
#                                   #
#                                   #
#####################################

puts 'Creating districts'

database_file_path = 'db/data/tabla.csv'
options = {
  # chunk_size: 1000, # Adjust this number based on your CSV file size
  convert_values_to_numeric: true # Set this to true if you want numeric values to be converted
}

SmarterCSV.process(database_file_path, options) do |chunk|
  District.create(chunk) # Replace "YourModel" with the appropriate model name
end

puts "Created #{District.all.count} districts"

puts 'Creating Criteria'

# create criterias
column_names[1..5].each do |column_name|
  Criterium.create!(name: column_name.capitalize.gsub('_', ' '))
end

puts "Created #{Criterium.all.count} categories"
