require 'rails_helper'

RSpec.describe "User can logout from their account", :type => :feature do
  scenario "Logged in user can logout" do
    login_user!

    click_on "Logout"

    expect(page).to_not have_content "Roberta"
  end
end
