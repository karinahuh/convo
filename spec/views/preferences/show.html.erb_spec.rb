require 'rails_helper'

RSpec.describe "preferences/show", type: :view do
  before(:each) do
    @preference = assign(:preference, Preference.create!(
      gender: "gender",
      min_age: "min_age",
      max_age: "max_age"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/gender/)
    expect(rendered).to match(/min_age/)
    expect(rendered).to match(/max_age/)
  end
end
