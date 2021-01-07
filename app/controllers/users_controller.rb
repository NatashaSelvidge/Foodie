class UsersController < ApplicationController

  # User can sign up
  get '/signup' do 
    erb :"users/signup"
  end 

  post '/signup' do 
    #users should not be able to create and account without filling in the whole form
    #users should not be able to create and account with the same username
    @user = User.new(params)
    if @user.save
      session[:user_id] = @user.id
      redirect "/restaurants"
      else
        @error = "Invalid input."
        erb :"/users/signup"
      end
    end 



  #users can delete account

  
end 