class Dropamounts < ActiveRecord::Migration
  def change
	  remove_column :transactions, :lender_amount
	  remove_column :transactions, :borrower_amount
  end
end
