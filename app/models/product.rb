class Product < ActiveRecord::Base
  attr_accessible :address, :adult_price, :contact, :description, :event_date, :event_time, :event_type, :fam_price, :image_url, :initiate, :num_days, :pens_price, :quote, :quote_auth, :quote_ref, :title, :venue, :youth_price
    default_scope :order => 'title'
    has_many :line_items
    before_destroy :ensure_not_referenced_by_any_line_item
    
    private
# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
	return true
	else
		errors.add(:base, 'Line Items present')
	return false
	end
	end
    
end
