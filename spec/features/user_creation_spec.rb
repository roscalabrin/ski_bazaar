require 'rails_helper'

describe "User can be created", :type => :feature do
  scenario "User credentials are valid" do
    user = User.create(username: "Roberta", password: "password")

    visit login_path
    fill_in "Username", with: user.username
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content "Welcome, Roberta"
  end
end
