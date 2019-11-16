class SessionsController < ApplicationController
  skip_before_action :require_login
  
  def index 
    redirect_to user_path(current_user) if logged_in?
  end

  def new
  end


  def create 
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:message] = "Sorry, please try again."
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

  def oauth_login
    @user = User.from_omniauth(auth)
    byebug
    @user.save
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  private
  def auth
    request.env['omniauth.auth']
  end

end
