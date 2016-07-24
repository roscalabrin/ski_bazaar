require 'rails_helper'

RSpec.describe "User see their listings", :type => :feature do
  scenario "they a page with their listings" do
    add_ski
    #add listing
    login_user!

    click_on "All Listings"

    #user add their listing
    #visit my listings and see the listing added but not the one created by the other user

  end
end
