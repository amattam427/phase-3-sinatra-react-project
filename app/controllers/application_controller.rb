class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get "/accommodations" do
    accommodations = Accommodation.all
    accommodations.to_json
  end

  get "/accommodations/:id" do
    accommodation = Accommodation.find(params[:id])
    accommodation.to_json(only: [:id, :name, :location, :description, :image], include: [:reviews])
  end

  # get "/accommodations/:id" do 
  #   accommodation = Accommodation.find(params[:id])
  #   accommodation.to_json(only: [:id, :name, :location, :description, :image])
  # end

  get "/accommodations/likes/:id" do
    accommodation = Accommodation.find(params[:id])
    accommodation.to_json(only: :like)
  end

  patch "/accommodations/:id" do 
    accommodation = Accommodation.find(params[:id])
    accommodation.update(
      like: params[:like]
    )
    accommodation.to_json
  end

  
  

end
