require 'ostruct'

class Author
  attr_accessor :first_name, :last_name, :genre

  def author
    OpenStruct.new(first_name: first_name, last_name: last_name, genre: genre)
  end

  # method missing
  def method_missing(method_name, *arguments, &block)
    # author_... -- want mmissing to find those
    if method_name.to_s =~ /author_(.*)/
      # send means we're passing the method name
      # this is kinda like saying 'author.first_name'
      author.send($1, *arguments, &block)
    else
      # calling super makes it go to 'parent' class
      super
    end
  end

  # use mmissing to 'fix' '.respond_to?'
  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.start_with?('author_') || super
  end

end

author = Author.new

author.first_name = "Cal"
author.last_name = "Newport"
author.genre = "Computer Science"

# method missing allows us to use these methods
# which are dynamically created
p author.author_first_name # => "Cal"
p author.author_genre # => "Computer Science"

# p author.respond_to?(:author_genre) # => false
# returned false before we added 'respond_to_missing?' method missing
# afterwards, it returns true

# It previously returned false bc we're using method missing to dynamically
# generate the method. Dev's use 'respond_to?' in the logic of their code
# to check if a method exists. We fixed it to make out code more usable
