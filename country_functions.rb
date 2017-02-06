# require_relative("countries_data")

def country_names(countries_data)
  names = []
  for country in countries_data
    names << country["name"]
  end
  return names
end

def select_random_countries(countries_data)
  chosen_countries = []
  counter = 0
  while counter < 4
    chosen_countries.push(countries_data.sample)
    counter += 1
  end
  return chosen_countries
end

def display_countries(names)
  counter = 1
  for name in names
    result = puts counter.to_s + ": " + name
    counter += 1
  end
  return result
end

# def country_largest_population(countries_data)
#   country_names = []
#   country_populations = []
#   #display four country names
#
#
#   #find answer
#   for country in countries_data
#     if chosen_countries["population"]
#     chosen_country_names.push(select_random_countries(COUNTRIES)["name"])
#   end
# end
# end

 def find_country_with_largest_population(countries_data)
  # for country in countries
  countries_by_population = Array.new
  countries_by_population = countries_data.sort_by{ |k| k["population"]}
  largest_population = countries_by_population.last["population"]
  country_name = countries_by_population.last["name"]
  return country_name
    #sort by population descending, take first country in array

 end

#puts select_random_countries(COUNTRIES)

#puts country_largest_population(COUNTRIES)
