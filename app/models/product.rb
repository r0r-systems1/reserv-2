class Product < ActiveRecord::Base
  attr_accessible :address, :adult_price, :contact, :description, :event_date, :event_time, :event_type, :fam_price, :image_url, :num_days, :pens_price, :quote, :quote_auth, :quote_ref, :title, :venue, :youth_price
end
