class GameController < ApplicationController

    get '/games' do
        Game.all.to_json 
    end

    get '/games/:id' do
        game = Game.find(params[:id])
        game.to_json
    end

    post "/games" do
        
        game = Game.find_or_create_by(
            title: params[:title],
            price: params[:price],
            platform: params[:platform]
        )
        game.to_json
    end

    delete '/games/:id' do
        game = Game.find(params[:id])
        game.destroy
    end

    
end