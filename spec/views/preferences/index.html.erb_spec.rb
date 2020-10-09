require 'rails_helper'

RSpec.describe "preferences/index", type: :view do
  before(:each) do
    assign(:preferences, [
      Preference.create!(
        name: "Name"
      ),
      Preference.create!(
        name: "Name"
      )
    ])
  end

  it "renders a list of preferences" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 0
  end
end
