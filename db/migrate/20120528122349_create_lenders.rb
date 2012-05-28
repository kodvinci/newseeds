class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.string :first_name
      t.string :last_name
      t.integer :UID
      t.integer :exp
      t.integer :credit, :default => 0

      t.timestamps
    end
  end
end
