# Favorite movies list
favorite_movies = ["Princess Bride", "Star Wars", "Mario", "TMNT"]

# 3.) Use len() function
print(f"The list favorite_movies includes my top {len(favorite_movies)} favorite movies")
print(favorite_movies)

# 4a.) Use .sorted() method to sort the list, then print again
print(sorted(favorite_movies))
print(favorite_movies)

# 4b.) Use .sort() method to sort the list, then print again
favorite_movies.sort()
print(favorite_movies)

# Sorted() only displays the list if it were to be sorted, but does not actually do an keep the action,
# but sort() actually does the action and keeps the list when printed again

# 5.) Use .append() to add another movie and print
favorite_movies.append("Red Hood")

print(f"The list favorite_movies includes my top {len(favorite_movies)} favorite movies")

print(favorite_movies)