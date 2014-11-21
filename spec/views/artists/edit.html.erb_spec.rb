require 'rails_helper'

RSpec.describe "artists/edit", :type => :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => "MyString",
      :description => "MyText",
      :original_rate => 1.5,
      :print_rate => 1.5
    ))
  end

  it "renders the edit artist form" do
    render

    assert_select "form[action=?][method=?]", artist_path(@artist), "post" do

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "textarea#artist_description[name=?]", "artist[description]"

      assert_select "input#artist_original_rate[name=?]", "artist[original_rate]"

      assert_select "input#artist_print_rate[name=?]", "artist[print_rate]"
    end
  end
end
