require 'rails_helper'

RSpec.describe "User can be created", :type => :feature do
  scenario "User credentials are valid" do

    visit new_user_path
    fill_in "Username", with: "Roberta"
    fill_in "Password", with: "password"
    click_on "Create Account"

    expect(page).to have_content "Signed in as Roberta | Logout"
  end
end
