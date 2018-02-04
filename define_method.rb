class Author
  # define_method("some_method") do
  #   puts "Some details"
  # end
  # '%w' lest us create an array of strings
  genres = %w(fiction coding history)
  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts genre.object_id
    end
  end
  # def fiction_details(arg)
  #   puts "Fiction"
  #   puts arg
  #   puts "asdfasdfsd"
  # end

  # def coding_details(arg)
  #   puts "Coding"
  #   puts arg
  #   puts "asdfasdfsd"
  # end

  # def history_details(arg)
  #   puts "History"
  #   puts arg
  #   puts "asdfasdfsd"
  # end
end

author = Author.new

# author.some_method

author.coding_details("Cal Newport")
# =>
# Genre: coding
# Cal Newport
# 10937160
author.fiction_details("Ayn Rand")

p author.respond_to?(:coding_details) # => true

# define_method creates the method at run time
# unlike method_missing
# respond_to? method works out of the box

# method_missing doesn't trigger until the whole method call
# has gone through the cycle

