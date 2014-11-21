require 'rails_helper'

RSpec.describe "artists/index", :type => :view do
  before(:each) do
    assign(:artists, [
      Artist.create!(
        :name => "Name",
        :description => "MyText",
        :original_rate => 1.5,
        :print_rate => 1.5
      ),
      Artist.create!(
        :name => "Name",
        :description => "MyText",
        :original_rate => 1.5,
        :print_rate => 1.5
      )
    ])
  end

  it "renders a list of artists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
