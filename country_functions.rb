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
  result = Array.new
  counter = 1
  for name in names
    result.push(counter.to_s + ": " + name)
    counter += 1
  end
  return result
end


def find_country_with_largest_population(countries_data)
  # for country in countries
  countries_by_population = Array.new
  countries_by_population = countries_data.sort_by{ |k| k["population"]}
  largest_population = countries_by_population.last["population"]
  country_name = countries_by_population.last["name"]
  return country_name
    #sort by population descending, take last country in array

end

def display_result(answer1, largest_population, random_country_names)
  if largest_population == random_country_names[answer1.to_i - 1]
    answer = "Right! The correct answer is: #{largest_population}"
  else
    answer = "Wrong! The correct answer is: #{largest_population}"
  end
  return answer

end

def find_country_with_largest_area(countries_data)
  # for country in countries
  countries_by_area = Array.new
  countries_by_area = countries_data.sort_by{ |k| k["area"] || 0}
  largest_area = countries_by_area.last["area"]
  country_name = countries_by_area.last["name"]
  return country_name
    #sort by area descending, take last country in array

end
#puts select_random_countries(COUNTRIES)

#puts country_largest_population(COUNTRIES)
