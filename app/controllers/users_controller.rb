class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end 


  def show
    @user = User.find(params[:id])
    
  end

  def log_in
    @user = User.new 
    
    

    
  end 

  def log_user_in
    @user = User.find_by(username: user_params[:username])
    
    
    if @user && @user.password == user_params[:password]
      session[:user_id] = @user.id
      redirect_to @user
    else 
      redirect_to log_in_path
    end 


  end 

  def create
    @user = User.create(user_params)

    if @user.valid?

    redirect_to @user
    else 
      render :log_in
    end 
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end 
end


