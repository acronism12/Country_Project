require_relative("countries_data")
require_relative("country_functions")

puts "Welcome to the countries appliction"
while true
  puts "What would you like to do?"

  puts "Options:"
  puts "  q: exit"
  puts "  1: see list of countries"
  puts "  2: play the countries game"

  choice = gets.chomp
  case choice
  when "q"
    puts "See you later"
    break
  when "1"
    puts "Country Names:"
    puts country_names(COUNTRIES)
  when "2"
    system "cls"
    puts "Q - Quit Quiz   S - Skip Question"
    puts "Question 1: Which country has the largest population?"
    random_countries = select_random_countries(COUNTRIES)
    random_country_names = country_names(random_countries)
    display_countries(random_country_names)
    largest_population = find_country_with_largest_population(random_countries)
    answer1 = gets.chomp
    puts "The correct answer is: #{largest_population}"

  else
  end
  puts "\n\n"

end
