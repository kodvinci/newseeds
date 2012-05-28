class AddForeignkeytoPurchases < ActiveRecord::Migration
  def change
	  add_column :purchases, :lender_id, :integer
  end
end
