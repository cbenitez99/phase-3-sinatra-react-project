class GameController < ApplicationController

    get '/games' do
        Game.all.to_json(:include => :reviews) #including a nested array! HOW DO I DO THIS?
    end

    post "/games" do
        
        game = Game.create(
            title: params[:title],
            price: params[:price],
            platform: params[:platform]
        )
        game.to_json
    end

    delete '/games' do
        game = Game.find(params[:id])
        game.destroy
    end

    
end