class AuthController < ApplicationController
  def login_view
  end

  def login_action
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else 
      redirect_to '/login'
    end
  end

  def logout
    session[:user_id] = nil  
    redirect_to '/'
  end
end
