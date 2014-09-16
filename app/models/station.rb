class Station < ActiveRecord::Base
  validates :name, :presence => true

  has_many :stops
  has_many :lines, :through => :stops
end
