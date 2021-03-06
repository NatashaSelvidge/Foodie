class RestaurantsController < ApplicationController
       
  #CREATE
    # New (form)
      get "/restaurants/new" do 
        require_login
        erb :"restaurants/new"
    end

  # Create 
     post "/restaurants" do
      @restaurant = current_user.restaurants.new(params)
      if @restaurant.save
            redirect  "/restaurants"
        else 
            @error = "Invaild. Please enter name and location."
            erb :"/restaurants/new"
        end 
      end 
    
#READ

  #Index
    
  get "/restaurants" do 
      require_login
          @restaurants = Restaurant.all.reverse
          erb :"restaurants/index"
    end 

  
  
  #Show
  get '/restaurants/:id' do 
     require_login
        @restaurant = Restaurant.find_by(id: params[:id])
      if @restaurant
         erb :"/restaurants/show"
      else
        redirect '/restaurants'
      end 
    end 

#UPDATE

  # Edit
      get "/restaurants/:id/edit" do
       require_login
         @restaurant = Restaurant.find(params[:id])
         erb :"/restaurants/edit"
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