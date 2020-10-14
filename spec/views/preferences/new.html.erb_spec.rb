require 'rails_helper'

RSpec.describe "preferences/new", type: :view do
  before(:each) do
    assign(:preference, Preference.new(
      gender: "MyString",
      min_age: "MyString",
      max_age: "MyString"
    ))
  end

  it "renders new preference form" do
    render

    assert_select "form[action=?][method=?]", preferences_path, "post" do

      assert_select "input[name=?]", "preference[gender]"

      assert_select "input[name=?]", "preference[min_age]"

      assert_select "input[name=?]", "preference[max_age]"
    end
  end
end
