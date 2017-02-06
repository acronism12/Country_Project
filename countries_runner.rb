require_relative("countries_data")
require_relative("country_functions")


while true
  system ('clear')
  puts "Welcome to the countries application"
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
    system ('clear')
    puts "Q - Quit Quiz   S - Skip Question"

    puts "Question 1: Which country has the largest population? (enter the number)"
    random_countries = select_random_countries(COUNTRIES)
    random_country_names = country_names(random_countries)
    puts display_countries(random_country_names)
    largest_population = find_country_with_largest_population(random_countries)
    answer1 = gets.chomp.downcase
    case answer1
    when "q"
      puts "Wimp!"
      break
    when "s"
      puts "Skipping question"
    else
      puts display_result(answer1, largest_population, random_country_names)
      puts
      puts "Any key to continue to question 2"
      gets.chomp
    end

    system ('clear')
    puts "Q - Quit Quiz   S - Skip Question"

    puts "Question 2: Which country is the largest by area? (enter the number)"
    random_countries = select_random_countries(COUNTRIES)
    random_country_names = country_names(random_countries)
    puts display_countries(random_country_names)
    largest_area = find_country_with_largest_area(random_countries)
    answer2 = gets.chomp.downcase
    case answer2
    when "q"
      puts "Loser!"
      break
    when "s"
      puts "Skipping question"
    else
      puts display_result(answer2, largest_area, random_country_names)
      puts
      puts "Any key to return to the main menu"
      gets.chomp
    end

  else
  end
  puts "\n\n"

end
