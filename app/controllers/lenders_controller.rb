class LendersController < ApplicationController

  def index
    @lenders = Lender.all
  end

  def new
    @lender = Lender.new
    @lender.users.build 
  end

  def create
    @lender = Lender.new(params[:lender])
    if @lender.save
      flash[:success] = "Lender created"
      redirect_to lenders_path
    else
      render 'new'
    end
  end

  def show
    @lender = Lender.find(params[:id])
#    @user = User.find(params[:user_id])
#    @lender = @user.lender.find(params[:id])
  end

end
