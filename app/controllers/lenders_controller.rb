class LendersController < ApplicationController

      	# GET /lenders
  def index
    @lenders = Lender.all
 #   @purchase = Lender.find(params[:id]).purchases

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lenders }
    end
    
  end

  # GET /lenders/1
  def show
    @lender = Lender.find(params[:id])
 #   @purchase = Lender.find(params[:id]).purchases

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lender }
    end
    
  end
  
  # GET /lenders/new
  def new
    @lender = Lender.new
   # @lender.purchase_id = Purchase.find(params[:purchase_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lender }
    end
    
  end

  # GET /lenders/1/edit
  def edit
    @lender = Lender.find(params[:id])
  end

  # POST /lenders
  def create
    @lender = Lender.new(params[:lender])

    respond_to do |format|
      if @lender.save
        format.html { redirect_to @lender, notice: 'You have been successfully added as a lender.' }
        format.json { render json: @lender, status: :created, location: @lender }
      else
        format.html { render action: "new" }
        format.json { render json: @lender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lenders/1
  # PUT /lenders/1.json
  def update
    @lender = Lender.find(params[:id])

    respond_to do |format|
      if @lender.update_attributes(params[:lender])
        format.html { redirect_to @lender, notice: 'Lender was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @lender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lenders/1
  # DELETE /lenders/1.json
  def destroy
    @lender = Lender.find(params[:id])
    @lender.destroy

    respond_to do |format|
      format.html { redirect_to lenders_url }
      format.json { head :ok }
    end
  end

  def frompurchase
    @lender = Lender.find(params[:id])

    @newCredit = :credit + BILL_AMOUNT

    respond_to do |format|
      if @lender.update_attribute(:credit, @newCredit)
        format.html { redirect_to lender_url }
        format.json { head :ok }
      else
        format.html { redirect_to :controller => 'purchase', :action => 'index'  }
        #format.json { render json: @lender.errors, status: :unprocessable_entity }
      end
    end
  end
end
