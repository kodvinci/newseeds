class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
   # @user.lender.build
  end

#def create
#  @user = User.new(params[:user])
#   if @user.save
#     flash[:notice] = "Successfully created user and lender."
#     redirect_to users_path
#   else
#     render :action => 'new'
#   end
#end
  
end
