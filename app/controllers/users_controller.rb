class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @lender = Lender.new
  end

  def create
    @user = User.new(params[:user])
    @lender = @user.lender.build(params[:lender])
    if @user.save
      flash[:notice] = "Successfully signed up as a Seeds lender!"
      redirect_to :action => 'show'
    else
      render :action => 'new'
    end
  end
  
end
