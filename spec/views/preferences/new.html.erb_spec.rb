require 'rails_helper'

RSpec.describe "preferences/new", type: :view do
  before(:each) do
    assign(:preference, Preference.new(
      name: "MyString"
    ))
  end

  it "renders new preference form" do
    render

    assert_select "form[action=?][method=?]", preferences_path, "post" do

      assert_select "input[name=?]", "preference[name]"
    end
  end
end
