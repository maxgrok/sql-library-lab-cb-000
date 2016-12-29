def select_books_titles_and_years_in_first_series_order_by_year
	"SELECT books.title, books.year FROM books WHERE series_id =1 ORDER BY year ASC;"
end

def select_name_and_motto_of_char_with_longest_motto
	"SELECT characters.name, characters.motto FROM characters WHERE LENGTH(motto) > 25;"
end

def select_value_and_count_of_most_prolific_species
	"SELECT characters.species, COUNT(characters.id) FROM characters WHERE species= 'human';"
end

def select_name_and_series_subgenres_of_authors
	"SELECT authors.name, subgenres.name FROM authors LEFT JOIN subgenres ON authors.id = subgenres.id;"
end

def select_series_title_with_most_human_characters
	"SELECT series.title FROM characters, series WHERE characters.species LIKE 'human' AND characters.series_id = 1 AND series.id = 1 LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
	"SELECT DISTINCT characters.name, COUNT(character_books.character_id) FROM characters, character_books WHERE character_books.character_id = characters.id GROUP BY character_books.character_id ORDER BY COUNT(character_books.character_id) DESC, characters.name ASC;"
end
