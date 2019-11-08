class UsersController < ApplicationController
  
  def new 
    @user = User.new
  end

  def create 
    # byebug
    @user = User.new(user_params)
    if @user.save
      #user has been saved we now want to remeber the user when they go to the next page
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end


  private 

  def user_params
    # "user"=>{"username"=>"corbintest", "email"=>"corbin@test.com", "password"=>"password"}
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
