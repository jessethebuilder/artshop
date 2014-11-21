require 'rails_helper'

RSpec.describe Artist, :type => :model do
  describe 'Validations' do
    it{ should validate_presence_of :name }

    it{ should validate_presence_of :original_rate }
    it{ should validate_numericality_of(:original_rate).is_greater_than(0) }

    it{ should validate_presence_of :print_rate }
    it{ should validate_numericality_of(:print_rate).is_greater_than(0) }
  end

  describe 'Associations' do
    it{ should have_many :pieces }
  end
end
