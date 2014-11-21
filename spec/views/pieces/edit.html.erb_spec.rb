require 'rails_helper'

RSpec.describe "pieces/edit", :type => :view do
  before(:each) do
    @piece = assign(:piece, Piece.create!(
      :name => "MyString",
      :medium => "MyString",
      :description => "MyText",
      :height => 1.5,
      :length => 1.5,
      :width => 1.5,
      :weight => 1.5,
      :original_price => "MyString"
    ))
  end

  it "renders the edit piece form" do
    render

    assert_select "form[action=?][method=?]", piece_path(@piece), "post" do

      assert_select "input#piece_name[name=?]", "piece[name]"

      assert_select "input#piece_medium[name=?]", "piece[medium]"

      assert_select "textarea#piece_description[name=?]", "piece[description]"

      assert_select "input#piece_height[name=?]", "piece[height]"

      assert_select "input#piece_length[name=?]", "piece[length]"

      assert_select "input#piece_width[name=?]", "piece[width]"

      assert_select "input#piece_weight[name=?]", "piece[weight]"

      assert_select "input#piece_original_price[name=?]", "piece[original_price]"
    end
  end
end
