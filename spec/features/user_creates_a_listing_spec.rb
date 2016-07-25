require 'rails_helper'

RSpec.describe "User submits a listing", :type => :feature do
  scenario "they the page for their added listing" do
    add_ski
    login_user!

    visit skis_path

    click_on "Add Listing"

    fill_in "seller_price", with: 600
    fill_in "seller_image", with: "https://www.glisshop.co.uk/gfx/img/glisshop/product/78559/gallery/0/black_crows-corvus-2016-original.jpg"
    click_on "Create Listing"

    expect(page).to have_content "Price: $600.0"
    expect(page).to have_css("img[src=\"#{Listing.last.image}\"]")
  end

  context "the submitted data is invalid" do
    scenario "they see an error message" do
      add_ski
      login_user!

      visit skis_path

      click_on "Add Listing"

      fill_in "seller_price", with: 600
      click_on "Create Listing"

      expect(page).to have_content "The information you provided was invalid. Please try again."
    end
  end
end
