require 'rails_helper'

RSpec.describe Piece, :type => :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }
    
    it{ should validate_presence_of :height }
    it{ should validate_numericality_of(:height).is_greater_than(0) }

    it{ should validate_presence_of :length }
    it{ should validate_numericality_of(:length).is_greater_than(0) }

    it{ should validate_presence_of :width }
    it{ should validate_numericality_of(:width).is_greater_than(0) }

    it{ should validate_presence_of :weight }
    it{ should validate_numericality_of(:weight).is_greater_than(0) }
  end

  describe 'Associations' do
    it{ should belong_to :artist }
  end
end
