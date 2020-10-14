require 'rails_helper'

RSpec.describe "preferences/show", type: :view do
  before(:each) do
    @preference = assign(:preference, Preference.create!(
      gender: "Gender",
      min_age: "Min Age",
      max_age: "Max Age"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Min Age/)
    expect(rendered).to match(/Max Age/)
  end
end
