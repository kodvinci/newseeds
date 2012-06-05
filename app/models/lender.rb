class Lender < ActiveRecord::Base
   belongs_to :user
   attr_accessible :first_name, :last_name, :credit, :user_id
   validates_presence_of :first_name, :last_name

end
