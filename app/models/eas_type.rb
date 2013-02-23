class EasType < ActiveRecord::Base
  attr_accessible :early, :name, :normal
  
  validates :name, :presence => true
  validates :early, :numericality => {:greater_than_or_equal_to =>0.01}
  validates :normal, :numericality => {:greater_than_or_equal_to =>0.01}
  
  belongs_to :attendee
  
  has_many :attndcats
  has_many :attendees, :through => :attndcats
end
