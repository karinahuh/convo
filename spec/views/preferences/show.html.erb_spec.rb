require 'rails_helper'

RSpec.describe "preferences/show", type: :view do
  before(:each) do
    @preference = assign(:preference, Preference.create!(
      name: "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
