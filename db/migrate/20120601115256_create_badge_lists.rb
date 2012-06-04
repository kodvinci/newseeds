class CreateBadgeLists < ActiveRecord::Migration
  def change
    create_table :badge_lists do |t|
      t.integer :lender_id

      t.timestamps
    end
  end
end
