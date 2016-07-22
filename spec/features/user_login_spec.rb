require 'rails_helper'

RSpec.describe "User can login to their account", :type => :feature do
  scenario "User provides valid credentials" do
    user = User.create(username: "Roberta", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content "Welcome, Roberta"

  end
end
