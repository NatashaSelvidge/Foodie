class SessionsController < ApplicationController

<<<<<<< HEAD
    #user can login 
    get '/login' do 
      erb :"users/login"
    end 
    
    post '/login' do 
      if params[:username].empty? || params[:password].empty?
           @error = "Invaild. Please enter valid username and password."
            erb :"/users/login"
      else
        if  @user = User.find_by(username: params[:username], password: params[:password])
            session[:user_id] = @user.id
            redirect "/restaurants"
        else 
           @error = "Account not found"
           erb :"/users/login"
      end
    end 
  end 
    #user can logout
  get "/logout" do 
    session.clear
    redirect '/'
end 




  end 
=======
end 
>>>>>>> parent of 5ccf169... added sessions controller where users can login and logout of their account
