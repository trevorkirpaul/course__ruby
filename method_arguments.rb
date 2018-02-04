# parenthesis optional for arguments
# def full_name first_name, last_name
#   first_name + " " + last_name
# end

# puts full_name "Trevor", "Kirpaul"


# ------------------------------------------------

# using named arguments // via hashed arguents

# def print_address city:, state: , zip:
#   puts city
#   puts state
#   puts zip
# end

# print_address city: "Hopewell", state: "Virginia", zip: 23860

# allows out of order arguments since they're tied to name

#  -------------------------------------------------

# default arguments

# def stream_movie title:, lang: "ENG"
#   puts title
#   puts lang
# end

# stream_movie title: "The Fountain" # => "The Fountain" "ENG"
# stream_movie title: "Movie", lang: "FRE" # => "Movie" "FRE"

#  -------------------------------------------------

