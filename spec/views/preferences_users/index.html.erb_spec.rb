require 'rails_helper'

RSpec.describe "preferences_users/index", type: :view do
  before(:each) do
    assign(:preferences_users, [
      PreferencesUser.create!(
        preferences_id: 2,
        users_id: 3,
        options: 4
      ),
      PreferencesUser.create!(
        preferences_id: 2,
        users_id: 3,
        options: 4
      )
    ])
  end

  it "renders a list of preferences_users" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
  end
end
