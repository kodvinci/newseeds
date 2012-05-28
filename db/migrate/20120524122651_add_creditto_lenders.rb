class AddCredittoLenders < ActiveRecord::Migration
  def change
	  add_column :lenders, :credit, :integer, :default => 0
  end

end
