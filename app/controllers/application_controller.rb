class ApplicationController < Sinatra::Base

  configure do
    set :default_content_type, 'application/json'
  end

  get "/" do
    "Go to http://localhost:9292/reviews"
  end

  get '/games' do
    Game.all.to_json
  end

  get '/zero-reviews' do
    Game.zero_likes.to_json
  end
  
end
