class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/" do
    "Go to http://localhost:9292/games"
  end

  get "/games" do #gives all games
    Game.all.to_json
  end

  get "/reviews" do #gives all reviews
    Review.all.to_json
  end

  get "/games/:id" do #gives back a specific game
   game = Game.find(params[:id])
   game.to_json
  end

  get "/reviews/:id" do #gives back a specific review
    review = Review.all.find(params[:id])
    review.to_json
  end

  get "/games/:id/review" do #gives back a certain games review
    game = Game.find(params[:id])
    game.to_json(:include => :reviews)
   end

end
