class BorrowersController < ApplicationController
  #GET /borrowers
  def index
    @borrowers = Borrower.all
  end
  
  #GET /borrowers/id
  def show
    @borrower = Borrower.find(params[:id])
  end

  #GET /borrowers/new
  def new
    @borrower = Borrower.new
  end

  #GET /borrowers/id/edit
  def edit
    @borrower = Borrower.find(params[:id])
  end
  
  #POST /borrowers
  def create
    @borrower = Borrower.new(params[:borrower])

    if @borrower.save
	    redirect_to @borrower, :notice => 'Borrower was successfully created.'
    else
	    render :action =>'new'
    end
  end
 
  #PUT /borrowers/id
  def update
    @borrower = Borrower.find(params[:id])

    respond_to do |format|
      if @borrower.update_attributes(params[:borrower])
        format.html { redirect_to @borrower, notice: 'Borrower was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @borrower.errors, status: :unprocessable_entity }
      end
    end
  end
  
  #DELETE /borrowers/id
  def destroy
    @borrower = Borrower.find(params[:id])
    @borrower.destroy

    respond_to do |format|
      format.html { redirect_to borrowers_url }
      format.json { head :ok }
    end
  end

end
