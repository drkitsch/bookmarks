require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class Bookmarks < Sinatra::Base 
  configure :development do 
    register Sinatra::Reloader
  end 

  get '/' do 
    'Bookmark Manager'
  end 

  get '/bookmarks' do 
    @bookmark_list = [ "http://www.makersacademy.com",
    "http://www.destroyallsoftware.com",
    "http://www.google.com" ]
  erb :'/index'
  end 

  get '/bookmarks/new' do 
    erb :'bookmarks/new'
  end 

  


  run if app_file == $0
end 

