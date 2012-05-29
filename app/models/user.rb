class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :first_name, :last_name
  validates_uniqueness_of :email, :case_sensitive => false
  
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name
  
#  has_one :lender, :dependent => :destroy

#  def new_lender_attributes=(lender_attributes)
#    lender_attributes.each do |attributes|
#    lender.build(attributes)
#    end
#  end  

#def existing_lender_attributes=(lender_attributes)
#lenders.reject(&:new_record?).each do |lender|
#attributes = lender_attributes[lender.id.to_s]
#if attributes
#lender.attributes = attributes
#else
#tasks.delete(task)
#end
#end
#end
#def save_tasks
#tasks.each do |task|
#CLICK HERE
  
end
