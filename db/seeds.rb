# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'csv'

def import_csv_file(csv_file)
  puts "Importing data from #{csv_file}..."
  CSV.foreach(csv_file, headers: true) do |row|
    AirQualityMeasurement.create!(
      timestamp: row['@timestamp'],
      measure_type: row['measure_type'],
      measure_float: row['measure_float'],
      brand: row['brand'],
      serial_number: row['serial_number'],
      establishment_id: row['establishment_id'],
      establishment_name: row['establishment_name'],
      establishment_city: row['establishment_city'],
      establishment_postcode: row['establishment_postcode'],
      establishment_address: row['establishment_address'],
      establishment_latitude: row['establishment_latitude'],
      establishment_longitude: row['establishment_longitude'],
      room_id: row['room_id'],
      room_name: row['room_name']
    )
  end
end

import_csv_file('./Room_1.csv')
import_csv_file('./Room_3.csv')
import_csv_file('./Room_4.csv')

puts 'Its ok bro'
