module UsersHelper
  def add_lender_link
    link_to_function do |page|
      page.insert_html :bottom, :lenders, :partial => 'lender', :object => Lender.new
    end
  end
	
end
