class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    Game.all.to_json#(:include => :platform)
  end

  get "/games" do
    Game.all.to_json
  end

  get "/reviews" do
    Review.all.to_json#(:include => :game, :except => :game_id)
  end
end
