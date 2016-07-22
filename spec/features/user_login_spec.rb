require 'rails_helper'

RSpec.describe "User can login to their account", :type => :feature do
  scenario "User provides valid credentials" do
    login_user!

    expect(page).to have_content "Welcome, Roberta"

  end
end
