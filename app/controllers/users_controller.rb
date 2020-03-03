class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end 

  def log_in
    @user = User.new 
  end 

  def show
    @user = User.find(params[:id])
  end

  def create
  end
end


