require 'sinatra'

class HiSinatra < Sinatra::Base
  get '/' do
    "Hey Sinatra"
  end

  get '/:age' do
    "Hi, I'm #{params[:age]} years"
  end

end
