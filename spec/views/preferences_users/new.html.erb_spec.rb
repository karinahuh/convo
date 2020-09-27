require 'rails_helper'

RSpec.describe "preferences_users/new", type: :view do
  before(:each) do
    assign(:preferences_user, PreferencesUser.new(
      preferences_id: 1,
      users_id: 1,
      options: 1
    ))
  end

  it "renders new preferences_user form" do
    render

    assert_select "form[action=?][method=?]", preferences_users_path, "post" do

      assert_select "input[name=?]", "preferences_user[preferences_id]"

      assert_select "input[name=?]", "preferences_user[users_id]"

      assert_select "input[name=?]", "preferences_user[options]"
    end
  end
end
