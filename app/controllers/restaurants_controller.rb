class RestaurantsController < ApplicationController
  
  #CREATE
    # New (form)
      get "/restaurants/new" do 
        if logged_in?
        erb :"restaurants/new"
        else 
          redirect '/login'
      end 
    end

  # Create 
     post "/restaurants" do
        @restaurant = current_user.restaurants.build(params)
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
    
  get "/restaurants" do 
    if logged_in?
    @restaurants = Restaurant.all.reverse
    erb :"restaurants/index"
    else 
      redirect '/login'
    end 
  end 
  
  #Show
  get '/restaurants/:id' do 
    if logged_in?
    @restaurant = Restaurant.find(params[:id])
    erb :"/restaurants/show"
    else 
      redirect '/login'
  end 
end 

#UPDATE

  # Edit
      get "/restaurants/:id/edit" do
        if logged_in?
         @restaurant = Restaurant.find(params[:id])
         erb :"/restaurants/edit"
        else
          redirect "/login"
        end 
      end 

  # Update
      patch "/restaurants/:id" do 
          
        @restaurant = Restaurant.find(params[:id])
         if !params["restaurant"]["name"].empty? || !params["restaurant"]["location"].empty? 
          @restaurant.update(params["restaurant"])
           redirect "/restaurants/#{params[:id]}"
      end 
       @error = "Invaild. Please enter name and location."
          erb :"/restaurants/edit"
    end 

# DELETE
  
     delete '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect '/restaurants'
  end 
end 