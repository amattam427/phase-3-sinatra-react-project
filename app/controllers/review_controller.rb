class ReviewController < ApplicationController
    get "/reviews" do 
        reviews = Review.all
        reviews.to_json
      end

    get "/reviews/:id" do
        reviews=Review.find(params[:id])
        reviews.to_json
    end
    

    get "/accommodations/:id/reviews" do
        reviews = Review.where(accommodation_id: params[:id])
        reviews.to_json
    end
    
      post "/reviews" do 
        review = Review.create(
          comment: params[:comment],
          accommodation_id: params[:accommodation_id]
        )
        review.to_json
      end

      delete '/reviews/:id' do
        review=Review.find(params[:id])
        review.destroy
        review.to_json
      end
      
    
end