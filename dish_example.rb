require 'rubygems'
require 'dish'

hash = {
  movie: "Star Wars",
  actors: [
    { age: 22, name: "Luke" },
    { age: 35, name: "Han" },
    { age: 400, name: "Yoda" },
  ],
  favorite: true
}

media = Dish(hash)
p media.movie
p media.favorite? 
