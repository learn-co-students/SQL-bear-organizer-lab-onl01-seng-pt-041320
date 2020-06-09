def selects_all_female_bears_return_name_and_age
  query = 'SELECT name, age From bears
          WHERE gender = "F";'
  query
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  query = 'SELECT name FROM bears GROUP BY name;'
  query
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  query = 'SELECT name, age FROM bears 
          WHERE alive = 1
          ORDER BY age;'
  query
end

def selects_oldest_bear_and_returns_name_and_age
  query = 'SELECT name, MAX(age) FROM bears;'
  query
end

def select_youngest_bear_and_returns_name_and_age
  query = 'SELECT name, MIN(age) FROM bears;'
  query
end

def selects_most_prominent_color_and_returns_with_count
  query = 'SELECT color, COUNT(color) FROM bears 
          GROUP BY color 
          ORDER BY COUNT(color) DESC LIMIT 1;'
  query
end

def counts_number_of_bears_with_goofy_temperaments
  query = 'SELECT COUNT(temperament) FROM bears
          WHERE temperament = "goofy";'
  query
end

def selects_bear_that_killed_Tim
  query = "SELECT id, name, age, gender, color, temperament, alive FROM bears
          WHERE id = (SELECT MAX(id) FROM bears);"
  query
end
