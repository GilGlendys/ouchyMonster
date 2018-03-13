# Require the csv library
require 'csv'

# Open the 'rent-data.csv' with a foreach loop
# for now it is okay for them to be blank
CSV.foreach("./rent-data.csv") do |row|
# default variable for highest rent
count = 0
list_of_cities = []
city = row[1]
most_expensive_row = nil
most_expensive_rent = 0

if row[1].include?("Newfoundland")
  if list_of_cities.include?(city)
    else
      list_of_cities.push(city)
      count += 1
  end
  year = row[0]
  housing_type = row[3]
  unit_type = row[4]
  price = row[7].to_i

  if price > most_expensive_rent
    most_expensive_rent = price
    most_expensive_row = row
  end
end
end

puts "cities are: " + list_of_cities.to_s
puts "most most expensive price" + most_expensive_rent.to_s
puts "count is: " + count.to_s
puts most_expensive_row
  # puts row[1]
  # year = row[0]
  # housing_type = row[3]
  # unit_type = row[4]
  # price = row[7]
  # puts ""
  # Loop through each of the rows
    # Compare cities using or/and statements to narrow down the data

# Print info about the city with the highest rent

#   country = row[0].to_s
#   emissions2002 = row[1].to_i
#   emissions2012 = row[2].to_i
#   # Compare the integer in the second (row[1]) with the integer in the third row (row[2])
#   difference = emissions2002 - emissions2012 # Here I am hoping they decreased!
#   puts "The difference in emissions from 2002 to 2012 for " + country + " is " + difference.to_s + " kilotonnes!"
#         # Print "The difference in emissions between 2002 and 2012 for [COUNTRY] is [NUMBER] kilotonnes!"
# end
