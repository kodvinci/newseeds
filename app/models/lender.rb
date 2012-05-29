class Lender < ActiveRecord::Base
   attr_accessible :first_name, :last_name, :credit

   #has_many :purchases
   
#   belongs_to :user
#   validates_presence_of :first_name, :last_name

end
