class RestaurantsController < ApplicationController

  #CREATE

      # New (form)
      # make a get request to '/restaurants/new'

      # Create 
      # make a post request to '/restaurants'

  #READ

      #Index
      #make a get request to '/restaurants'
  get '/restaurants' do 
    @restaurants = Restaurant.all
    erb :'restaurants/index'
  end 

      #Show
      # make a get request ot '/restaurants/:id'
    get '/restaurants/:id' do 
      @restaurant = Restaurant.find_by_id(params["id"])
      erb :"restaurants/show"
    end 

  #UPDATE

      # Edit
      # make a get request to 'restaurants/:id/edit' 

      # Update
      # make a post (patch) request to '/restaurants/:id'
  
  #DELETE

    # make a post (delete) request to '/restaurants/:id'

end 