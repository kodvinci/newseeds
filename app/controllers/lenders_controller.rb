class LendersController < ApplicationController

  def index
    @lenders = Lender.all
  end

  def new
#     @user.lender = Lender.new
#    @user = User.find(params[:user_id])
#    @lender = @user.lender.build
      @lender = Lender.new
      @lender.id = params[:id]
#    @lender.users.build 
#     @lender = Lender.new(:user_id => @user.id)
  end

  def create
    @lender = Lender.new(params[:lender])
    @id = User.find(params[:user][:user_id])
    if @lender.save
      flash[:success] = "Lender created"
      redirect_to lenders_path
    else
      render 'new'
    end
  end

  def show
    @lender = Lender.find(params[:user_id])
#    @lender = @user.lender.find(params[:id])

  end

  def destroy
    @lender = Lender.find(params[:id])
    @lender.destroy

    respond_to do |format|
      format.html { redirect_to lenders_url }
      format.json { head :ok }
    end
  end
  

end
