require 'rails_helper'

RSpec.describe "preferences/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      nickname: "Ana",
      email: "ana@email.com",
      age: "21",
      gender: "1",
      password: "123"
    )),
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
