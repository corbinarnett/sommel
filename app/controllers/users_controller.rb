class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  skip_before_action :require_login, only: [:new, :create]

  def new 
    @user = User.new
  end

  def create 
    # byebug
    @user = User.new(user_params)
    if @user.save
      #user has been saved we now want to remember the user when they go to the next page
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
  end



  private 

  def user_params
    # "user"=>{"username"=>"corbintest", "email"=>"corbin@test.com", "password"=>"password"}
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(id: params[:id])
    # redirect_to current user, if the user set is not the current user.  Protects against going to random users show page via url.
    redirect_to user_path(current_user) if @user != current_user
  end
end
