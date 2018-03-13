=begin
Glen Gil
Ladies Learning Code

This is a super simple program to show me the rent costs of all apartments in Toronto
between 1980 and 1990. The CSV is originally read in as all strings so some conversion magic needs
to happen for the values. The header is:
Ref_Date, GEO, Geographical classification, STRUCTURE, UNIT, Vector, Coordinate,Value
and full dataset (11MB) can be downloaded here: (You will have to rename it)
http://open.canada.ca/data/en/dataset/1146388b-a150-4e70-98ec-eb40cb9083c8
=end
require 'csv'

# Create a new CSV to store values
CSV.open("finalProject.csv", "wb") do |finalProject|

  # Read in the CSV
  CSV.foreach('./rent-data.csv', :encoding => 'ISO-8859-1') do |row|
    year = row[0].to_i
    province = row[1]
    price = row[7].to_i

    # checks for VALUE field to be above 0 - but I already filtered the non-zero entries out to cut down on size
    if price > 0 and
        year > 1980 and
        year < 1990 and
      province.include? "Ontario" and
      !province.include?("Quebec part")
          # Adding the filtered data to a new file.
          finalProject << row
          # puts row
    end

    # selection sort
  end
end
