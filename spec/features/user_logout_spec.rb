require 'rails_helper'

RSpec.describe "User can logout from their account", :type => :feature do
  scenario "Logged in user can logout" do
    user = User.create(username: "Roberta", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_on "Login"

    click_on "Logout"

    expect(page).to_not have_content "Welcome, Roberta"
  end
end
