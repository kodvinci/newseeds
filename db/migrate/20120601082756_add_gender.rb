class AddGender < ActiveRecord::Migration
  def change
	  add_column :borrowers, :gender, :string, :null => false, :default =>""
  end

end
