class UsersController < ApplicationController

  # User can sign up
  get '/signup' do 
    erb :"users/signup"
  end 

  post '/signup' do 
    #users should not be able to create and account without filling in the whole form
    #users should not be able to create and account with the same username
    @user = User.new(params)
    if @user.username.empty? || @user.password.empty?
         @error = "Invaild. Please enter valid username and password."
          erb :"/users/signup"
        elsif User.find_by(username: @user.username)
          @error = "Account with that username already exists"
          erb :"/users/signup"
      else
          @user.save
          session[:user_id] = @user.id
          redirect "/restaurants"
      end
    end 



  #users can delete account

  
end 