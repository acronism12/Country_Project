require_relative('../country_functions')
require_relative('../countries_data')
require('minitest/autorun')

class CountriesTest < MiniTest::Test

  def setup
    @countries = COUNTRIES
  end

  def test_gives_an_array_of_all_country_names
    names = country_names(@countries)
    assert_equal(247, names.length)
  end

  def test_select_random_countries
    chosen_countries = select_random_countries(@countries)
    assert_equal(4, chosen_countries.length)
  end

# cant get this test to work!
  def test_display_countries
    display = display_countries(["Scotland", "England", "Ireland", "Wales"])
    result = ["1: Scotland", "2: England", "3: Ireland", "4: Wales"]
    assert_equal(result,display)
  end

  def test_find_country_with_largest_population
    largest_population = find_country_with_largest_population(@countries)
    assert_equal("China",largest_population)

  end

end
