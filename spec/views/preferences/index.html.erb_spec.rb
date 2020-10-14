require 'rails_helper'

RSpec.describe "preferences/index", type: :view do
  before(:each) do
    assign(:preferences, [
      Preference.create!(
        gender: "Gender",
        min_age: "Min Age",
        max_age: "Max Age"
      ),
      Preference.create!(
        gender: "Gender",
        min_age: "Min Age",
        max_age: "Max Age"
      )
    ])
  end

  it "renders a list of preferences" do
    render
    assert_select "tr>td", text: "Gender".to_s, count: 2
    assert_select "tr>td", text: "Min Age".to_s, count: 2
    assert_select "tr>td", text: "Max Age".to_s, count: 2
  end
end
