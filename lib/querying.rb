def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books WHERE series_id = 1 ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, characters.motto FROM characters ORDER BY length(characters.motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT characters.species, COUNT(*) FROM characters GROUP BY species ORDER BY COUNT(characters.species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM authors JOIN series ON authors.id = series.author_id JOIN subgenres ON subgenres.id = series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN books ON series.id = books.series_id
  INNER JOIN character_books ON character_books.book_id = books.id 
  INNER JOIN characters ON character_books.character_id = characters.id
  WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT (*) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) AS num_of_books FROM character_books JOIN characters
  WHERE characters.id = character_books.character_id GROUP BY characters.name ORDER BY num_of_books DESC;"
end