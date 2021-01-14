class UsersController < ApplicationController

  # User can sign up
  get "/signup" do
    erb :"users/signup"
  end
  # users should not be able to create and account without filling in the whole form
  # users should not be able to create and account with the same username

  post "/signup" do
    @user = User.new(params)
    if @user.save
      session[:user_id] = @user.id
      redirect "/restaurants"
    else
      @error = "Invalid credentials"
      erb :"/users/signup"     
    end
  end 

  # get "/contact" do
  #   erb :"users/contact"
  # end

  # post "/contact" do
  #   redirect "/"
  # end
end
