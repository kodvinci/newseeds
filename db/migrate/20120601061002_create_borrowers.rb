class CreateBorrowers < ActiveRecord::Migration
  def change
    create_table :borrowers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :nationalID
      t.integer :UID
      t.integer :sum, :default => 0
      t.text :description

      t.timestamps
    end
  end
end
