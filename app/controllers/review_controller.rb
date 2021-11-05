class ReviewController < ApplicationController
    
    get "/reviews" do #gives all reviews and includes associated games
        Review.all.to_json(:include => :game, :except => :game_id)
    end

    get "/reviews/:id" do #gives back a review
        review = Review.find(params[:id])
        review.to_json(:include => :game, :except => :game_id)
    end

    post "/reviews" do #sends review data through conditionals to the DB
        game = Game.find_or_create_by(title: params[:title], price: params[:price], platform: params[:platform])
        review = Review.new(user_name: params[:user_name], content: params[:content], game_id: game.id)
        if review.save
            review.to_json(:include => :game, :except => :game_id)
        else
            review.errors.to_json
        end 
    end 

    delete '/reviews/:id' do #deletes a review in the DB.
        review = Review.find(params[:id])
        review.delete
    end

    patch "/reviews/:id" do 
        review = Review.find(params[:id])
        if review.update(content: params[:content])
            review.to_json(:include => :game, :except => :game_id)
        end 
    end 
    
end
