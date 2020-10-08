require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        nickname: "Nickname",
        email: "Email",
        age: 2,
        gender: 3,
        password: "Password"
      ),
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Nickname".to_s, count: 1
    assert_select "tr>td", text: "Email".to_s, count: 1
    assert_select "tr>td", text: 2.to_s, count: 1
    assert_select "tr>td", text: 3.to_s, count: 1
    assert_select "tr>td", text: "Password".to_s, count: 1
  end
end
