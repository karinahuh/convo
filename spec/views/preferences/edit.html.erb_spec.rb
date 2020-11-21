require 'rails_helper'

RSpec.describe "preferences/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      nickname: "Ana",
      email: "ana@email.com",
      age: "21",
      gender: "1",
      password: "123"
    )),
    @preference = assign(:preference, Preference.create!(
      gender: "MyString",
      min_age: "MyString",
      max_age: "MyString"
    ))
  end

  /it "renders the edit preference form" do
    render

    assert_select "form[action=?][method=?]", preference_path(@preference), "post" do

      assert_select "input[name=?]", "preference[gender]"

      assert_select "input[name=?]", "preference[min_age]"

      assert_select "input[name=?]", "preference[max_age]"
    end
  end/
end
