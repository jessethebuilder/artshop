require 'rails_helper'

RSpec.describe "pieces/index", :type => :view do
  before(:each) do
    assign(:pieces, [
      Piece.create!(
        :name => "Name",
        :medium => "Medium",
        :description => "MyText",
        :height => 1.5,
        :length => 1.5,
        :width => 1.5,
        :weight => 1.5,
        :original_price => "Original Price"
      ),
      Piece.create!(
        :name => "Name",
        :medium => "Medium",
        :description => "MyText",
        :height => 1.5,
        :length => 1.5,
        :width => 1.5,
        :weight => 1.5,
        :original_price => "Original Price"
      )
    ])
  end

  it "renders a list of pieces" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Medium".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Original Price".to_s, :count => 2
  end
end
