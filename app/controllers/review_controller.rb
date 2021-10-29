class ReviewController < ApplicationController
    
    get "/reviews" do #gives all reviews
        Review.all.to_json
    end

    get "/reviews/:id" do #gives back a specific review
        review = Review.all.find(params[:id])
        review.to_json
    end

    
    # # post `/reviews`
end