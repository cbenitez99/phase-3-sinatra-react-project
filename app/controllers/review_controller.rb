class ReviewController < ApplicationController
    
    get "/reviews" do #gives all reviews
        Review.all.to_json
    end

    get "/reviews/:id" do #gives back a specific review
        review = Review.find(params[:id])
        review.to_json
    end

    
    post "/reviews" do
        
        review = Review.find_or_create_by(
            user_name: params[:user_name],
            content: params[:content],
            game_id: params[:game_id]
        )
        review.to_json
    end

    delete '/reviews/:id' do
        game = Review.find(params[:id])
        game.destroy
    end

end
