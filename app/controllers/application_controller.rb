class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/accommodations" do
    accommodations = Accommodation.all
    accommodations.to_json
  end

  get "/accommodations/:id" do
    accommodation = Accommodation.find(params[:id])
    accommodation.to_json(include: :reviews)
  end

  get "/accommodations/likes/:id" do
    accommodation = Accommodation.find(params[:id])
    accommodation.to_json(only: :like)
  end

  patch "/accommodations/:id" do 
    accommodation = Accommodation.find(params[:id])
    accommodation.update(
      like: params[:like]
    )
    review.to_json
  end

  get "/reviews" do 
    reviews = Review.all
    reviews.to_json
  end

  get "/reviews/:id" do 
    reviews = Review.find(params[:id])
    reviews.to_json
  end

  post "/reviews" do 
    review = Review.create(
      comment: params[:comment],
      accommodation_id: params[:accommodation_id]
    )
    review.to_json
  end
  

  

end
