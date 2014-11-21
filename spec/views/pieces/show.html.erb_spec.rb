require 'rails_helper'

RSpec.describe "pieces/show", :type => :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      :name => "Name",
      :medium => "Medium",
      :description => "MyText",
      :height => 1.5,
      :length => 1.5,
      :width => 1.5,
      :weight => 1.5,
      :original_price => "Original Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Medium/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Original Price/)
  end
end
