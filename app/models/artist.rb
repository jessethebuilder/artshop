class Artist < ActiveRecord::Base
  has_many :pieces

  validates :name, :presence => true

  validates :original_rate, :presence => true, :numericality => {:greater_than => 0}
end
