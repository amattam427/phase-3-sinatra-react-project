class ReviewController < ApplicationController
    get "/reviews" do 
        reviews = Review.all
        reviews.to_json
      end
    
      get "/reviews/:id" do 
        reviews = Review.find(params[:id])
        reviews.to_json(include: {accommodation: {only: [:id, :name, :location, :description, :image]}})
      end
    
      post "/reviews" do 
        review = Review.create(
          comment: params[:comment],
          accommodation_id: params[:accommodation_id]
        )
        review.to_json
      end
      
    
end