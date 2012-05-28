class Lender < ActiveRecord::Base
   attr_accessible :first_name, :last_name, :credit

   has_many :purchases

end
