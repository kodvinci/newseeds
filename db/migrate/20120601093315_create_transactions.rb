class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :lender_id
      t.integer :borrower_id
      t.decimal :lender_amount
      t.decimal :borrower_amount

      t.timestamps
    end
  end
end
