require 'rubygems'
require 'httparty'

class EdutechionalResty
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com/"

  def posts
    self.class.get('/posts.json')
  end
end

edutechional_resty = EdutechionalResty.new
# puts edutechional_resty.posts

edutechional_resty.posts.each do |post|
  p "Title: #{post['title']} | Description: #{post['description']}" 
end



# test with stack exchange -- 

# response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow')

# puts response.body # => <! all item paginated !>
# puts response.code # => 200
# puts response.message # => ok
# puts response.headers.inspect
# =>
# {"cache-control"=>["private"], "content-type"=>["application/json; charset=utf-8"], "access-control-allow-origin"=>["*"], "access-control-allow-methods"=>["GET, POST"], "access-control-allow-credentials"=>["false"], "x-content-type-options"=>["nosniff"], "date"=>["Sun, 04 Feb 2018 12:34:58 GMT"], "connection"=>["close"], "content-length"=>["5052"]}

# class StackExchange
#   include HTTParty
  
#   base_uri "api.stackexchange.com"

#   def initialize(service, page)
#     @options = { query: { site: service } }
#   end

#   def questions
#     self.class.get('/2.2/questions', @options)
#   end

#   def users
#     self.class.get('/2.2/users', @options)
#   end
# end

# stack_exchange = StackExchange.new('stackoverflow', 1)

# puts stack_exchange.questions # => <! lost of info !>
# puts stack_exchange.users
