require 'rails_helper'

RSpec.describe "User can login to their account", :type => :feature do
  scenario "User provides valid credentials" do
    login_user!

    expect(page).to have_content "Welcome, Matt"
  end
end
# if its admin sees index with all skis and edit and delete buttons
#if its not admin sees index with list of all skis only
