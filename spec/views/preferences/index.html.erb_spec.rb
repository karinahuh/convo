require 'rails_helper'

RSpec.describe "preferences/index", type: :view do
  before(:each) do
    assign(:preferences, [
      Preference.create!(
        gender: "gender",
        min_age: "min_age",
        max_age: "max_age"
      ),
      Preference.create!(
        gender: "gender",
        min_age: "min_age",
        max_age: "max_age"
      )
    ])
  end

  it "renders a list of preferences" do
    render
    assert_select "tr>td", text: "gender".to_s, count: 0
    assert_select "tr>td", text: "min_age".to_s, count: 0
    assert_select "tr>td", text: "max_age".to_s, count: 0
  end
end
