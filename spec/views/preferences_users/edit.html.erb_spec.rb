require 'rails_helper'

RSpec.describe "preferences_users/edit", type: :view do
  before(:each) do
    @preferences_user = assign(:preferences_user, PreferencesUser.create!(
      preferences_id: 1,
      users_id: 1,
      options: 1
    ))
  end

  it "renders the edit preferences_user form" do
    render

    assert_select "form[action=?][method=?]", preferences_user_path(@preferences_user), "post" do

      assert_select "input[name=?]", "preferences_user[preferences_id]"

      assert_select "input[name=?]", "preferences_user[users_id]"

      assert_select "input[name=?]", "preferences_user[options]"
    end
  end
end
