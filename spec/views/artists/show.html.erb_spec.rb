require 'rails_helper'

RSpec.describe "artists/show", :type => :view do
  before(:each) do
    @artist = assign(:artist, Artist.create!(
      :name => "Name",
      :description => "MyText",
      :original_rate => 1.5,
      :print_rate => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end
