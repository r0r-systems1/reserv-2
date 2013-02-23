class Attndcat < ActiveRecord::Base
  attr_accessible :attendee_id, :eas_type
  
  belongs_to :attendee
  belongs_to :eas_type
end
