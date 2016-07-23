require 'rails_helper'

RSpec.describe "User submits a listing", :type => :feature do
  scenario "they a page with their new listing" do
    add_ski
    login_user!

    visit skis_path

    click_on "Add Listing"
    # save_and_open_page
    fill_in "seller_price", with: 600
    fill_in "seller_image", with: 'https://www.glisshop.co.uk/gfx/img/glisshop/product/78559/gallery/0/black_crows-corvus-2016-original.jpg'
    click_on "Create Listing"

    expect(page).to have_content 600
  end
end
