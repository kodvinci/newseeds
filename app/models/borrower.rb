class Borrower < ActiveRecord::Base
   attr_accessible :first_name, :last_name, :nationalID, :description, :business_type, :gender
end
