class GameController < ApplicationController
    get "/games" do #gives all games
        Game.all.to_json
    end

    get "/games/:id" do #gives back a specific game
        game = Game.find(params[:id])
        game.to_json
    end

    get "/games/:id/review" do #gives back all reviews of a game
        game = Game.find(params[:id])
        game.to_json(:include => :reviews)
    end
end