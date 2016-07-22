require 'rails_helper'

RSpec.describe "User submits a listing", :type => :feature do
  scenario "they a page with their new listing" do
    login_user!

    visit skis_path

    click_on "Add Listing"
    fill_in "price", with: 500
    click_on "Create Listing"

    expect(page).to have_content 500
  end
end
