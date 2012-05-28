class Editlenders < ActiveRecord::Migration
  def change
	  remove_column :lenders, :credit
  end
end
