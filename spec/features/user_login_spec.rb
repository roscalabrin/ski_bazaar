require 'rails_helper'

RSpec.describe "User can login to their account", :type => :feature do
  scenario "User provides valid credentials and is not an admin" do
    login_user!

    within("#navbar-login") do
      expect(page).to have_content "Signed in as Matt | Logout"
    end
    expect(current_path).to eq skis_path
  end

  scenario "User is an admin" do
    login_admin!

    within("#navbar-login") do
      expect(page).to have_content "Signed in as Admin | Logout"
    end
    expect(current_path).to eq skis_path
  end
end
