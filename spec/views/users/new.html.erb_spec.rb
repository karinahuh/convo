require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      nickname: "MyString",
      email: "MyString",
      age: 1,
      gender: 1,
      password: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[nickname]"

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[age]"

      assert_select "input[name=?]", "user[gender]"

      assert_select "input[name=?]", "user[password]"
    end
  end
end
