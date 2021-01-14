class SessionsController < ApplicationController

  
    get '/login' do 
      erb :"users/login"
    end 
    
    post '/login' do 
      @user = User.find_by(username: params[:username]) 
      if  @user && @user.authenticate(params[:password])
       session[:user_id] = @user.id
       redirect "/restaurants"
      else
        if params[:username].blank? || params[:password].blank?
             @error = "Invaild input. Please enter valid username and password."
              erb :"/users/login"
        else 
           @error = "Account not found"
           erb :"/users/login"
      end
    end 
  end 
  
   get "/logout" do 
        session.clear
      redirect '/'
    end 
  end 