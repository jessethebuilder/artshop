class Piece < ActiveRecord::Base
  belongs_to :artist

  validates :name, :presence => true

  validates :height, :presence => true, :numericality => {:greater_than => 0}
  validates :width, :presence => true, :numericality => {:greater_than => 0}
  validates :length, :presence => true, :numericality => {:greater_than => 0}
  validates :weight, :presence => true, :numericality => {:greater_than => 0}
end
