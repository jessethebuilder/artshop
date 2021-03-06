require 'rails_helper'

RSpec.describe "artists/new", :type => :view do
  before(:each) do
    assign(:artist, Artist.new(
      :name => "MyString",
      :description => "MyText",
      :original_rate => 1.5,
      :print_rate => 1.5
    ))
  end

  it "renders new artist form" do
    render

    assert_select "form[action=?][method=?]", artists_path, "post" do

      assert_select "input#artist_name[name=?]", "artist[name]"

      assert_select "textarea#artist_description[name=?]", "artist[description]"

      assert_select "input#artist_original_rate[name=?]", "artist[original_rate]"

      assert_select "input#artist_print_rate[name=?]", "artist[print_rate]"
    end
  end
end
