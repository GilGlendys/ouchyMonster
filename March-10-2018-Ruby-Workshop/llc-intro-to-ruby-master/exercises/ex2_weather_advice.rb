# Ask the user for input on the weather!
# Change print to puts for a new line
puts "What is the weather? (sunny, raining, cold, etc.) "
# Use chomp to get the user input
weather = gets.chomp
# If the weather is "cold"...
  if weather == "cold"
      puts "Wear a sweater!"
  # If the weather is "raining"...
  elsif weather == "raining"
      puts "Bring an umbrella"
  #Bonus
  elsif weather == "sunny"
      puts "Wear shorts"
  # If it is neither...
  else
  puts "Dress normally :)"
  end
