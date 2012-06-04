class Transaction < ActiveRecord::Base
  attr_accessible :borrower_id, :borrower_amount, :lender_id, :lender_amount, :updated_at
end
