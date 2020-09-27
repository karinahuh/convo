require 'rails_helper'

RSpec.describe "preferences_users/show", type: :view do
  before(:each) do
    @preferences_user = assign(:preferences_user, PreferencesUser.create!(
      preferences_id: 2,
      users_id: 3,
      options: 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
