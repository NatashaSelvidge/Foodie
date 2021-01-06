class RestaurantsController < ApplicationController

  #CREATE

      # New (form)
      # make a get request to '/restaurants/new'
      get "/restaurants/new" do 
        erb :"restaurants/new"
      end 

      # Create 
      # make a post request to '/restaurants'
      post "/restaurants" do
      @restaurant = Restaurant.new(params)
      if @restaurant.image.empty?
        @restaurant.image = "https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8cmVzdGF1cmFudHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
        if !@restaurant.name.empty? && !@restaurant.location.empty? 
          @restaurant.save
          redirect "/restaurants"
        else 
          @error = "Invaild. Please enter name and location."
          erb :"/restaurants/new"
        end 
      end 
    end 
  #READ

      #Index
      #make a get request to '/restaurants'
  get "/restaurants" do 
    @restaurants = Restaurant.all.reverse
    erb :"restaurants/index"
  end 
  
  #Show
  # make a get request ot '/restaurants/:id'
  get '/restaurants/:id' do 
    @restaurant = Restaurant.find(params[:id])
    erb :"/restaurants/show"
  end 
  

  #UPDATE

      # Edit
      get "/restaurants/:id/edit" do
         @restaurant = Restaurant.find(params[:id])
         erb :"/restaurants/edit"
      end 

      # Update
      # make a post (patch) request to '/restaurants/:id'
      patch "/restaurants/:id" do 
          
        @restaurant = Restaurant.find(params[:id])
         if !params["restaurant"]["name"].empty? || !params["restaurant"]["location"].empty? 
          @restaurant.update(params["restaurant"])
           redirect "/restaurants/#{params[:id]}"
      end 
       @error = "Invaild. Please enter name and location."
          erb :"/restaurants/edit"
    end 
      

  #DELETE
    # make a post (delete) request to '/restaurants/:id'
   
  end 
end 