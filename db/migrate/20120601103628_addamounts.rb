class Addamounts < ActiveRecord::Migration
  def change
	  add_column :transactions, :lender_amount, :decimal, :default => 0.0
	  add_column :transactions, :borrower_amount, :decimal, :default => 0.0
  end

end
