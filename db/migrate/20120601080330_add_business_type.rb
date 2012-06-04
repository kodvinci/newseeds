class AddBusinessType < ActiveRecord::Migration
  def change
	  add_column :borrowers, :business_type, :string
  end
end
