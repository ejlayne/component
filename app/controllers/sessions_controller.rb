class SessionsController < ApplicationController
  def index
  end
  
  def new
  end
  
  def create
    if user = User.authenticate(params[:email], params[:password])
      # Save the user ID in the session so it can be used in
      # subsequent requests
      session[:current_user_id] = user.id
      flash[:notice] = "You have successfully logged in."
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Error Logging in."
      render "new"
    end
  end
  
  # "Delete" a login, aka "log the user out"
  def destroy
    # Remove the user id from the session
    @_current_user = session[:current_user_id] = nil
    redirect_to root_url, :notice => "Logged out!"
  end
end